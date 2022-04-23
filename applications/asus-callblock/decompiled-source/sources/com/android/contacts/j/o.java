package com.android.contacts.j;

import android.content.Context;
import android.os.AsyncTask;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/o.class */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    private final String f1565b = "SmartDialUnbundle";

    /* renamed from: a  reason: collision with root package name */
    final SparseArray<String[]> f1564a = new SparseArray<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/o$a.class */
    final class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f1567b;

        public a(WeakReference<Context> weakReference) {
            this.f1567b = weakReference.get();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:65:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.o.a.a():java.lang.Void");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }
    }

    public o(Context context) {
        new a(new WeakReference(context)).execute(new Void[0]);
    }
}
