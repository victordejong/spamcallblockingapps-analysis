package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifViewSavedState.class */
public class GifViewSavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<GifViewSavedState> CREATOR = new C9689a();

    /* renamed from: d */
    final long[][] f40942d;

    /* renamed from: pl.droidsonroids.gif.GifViewSavedState$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifViewSavedState$a.class */
    static final class C9689a implements Parcelable.Creator<GifViewSavedState> {
        C9689a() {
        }

        /* renamed from: a */
        public GifViewSavedState createFromParcel(Parcel parcel) {
            return new GifViewSavedState(parcel, (C9689a) null);
        }

        /* renamed from: b */
        public GifViewSavedState[] newArray(int i) {
            return new GifViewSavedState[i];
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [long[], long[][]] */
    private GifViewSavedState(Parcel parcel) {
        super(parcel);
        this.f40942d = new long[parcel.readInt()];
        int i = 0;
        while (true) {
            long[][] jArr = this.f40942d;
            if (i < jArr.length) {
                jArr[i] = parcel.createLongArray();
                i++;
            } else {
                return;
            }
        }
    }

    /* synthetic */ GifViewSavedState(Parcel parcel, C9689a c9689a) {
        this(parcel);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    public GifViewSavedState(Parcelable parcelable, long[] jArr) {
        super(parcelable);
        this.f40942d = r0;
        ?? r0 = {jArr};
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [long[], long[][]] */
    public GifViewSavedState(Parcelable parcelable, Drawable... drawableArr) {
        super(parcelable);
        this.f40942d = new long[drawableArr.length];
        for (int i = 0; i < drawableArr.length; i++) {
            Drawable drawable = drawableArr[i];
            if (drawable instanceof C9692c) {
                this.f40942d[i] = ((C9692c) drawable).f40950j.m101m();
            } else {
                this.f40942d[i] = null;
            }
        }
    }

    /* renamed from: a */
    public void m71a(Drawable drawable, int i) {
        long[][] jArr = this.f40942d;
        if (jArr[i] == null || !(drawable instanceof C9692c)) {
            return;
        }
        C9692c c9692c = (C9692c) drawable;
        c9692c.m52l(c9692c.f40950j.m90x(jArr[i], c9692c.f40949i));
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f40942d.length);
        for (long[] jArr : this.f40942d) {
            parcel.writeLongArray(jArr);
        }
    }
}
