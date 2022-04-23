package p459j.p460a.p474c0.p475c.p478y;

import android.app.LoaderManager;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.sqlite.SQLiteFullException;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.action.DeleteConversationAction;
import gogolook.callgogolook2.messaging.datamodel.action.DeleteMessageAction;
import gogolook.callgogolook2.messaging.datamodel.action.InsertNewMessageAction;
import gogolook.callgogolook2.messaging.datamodel.action.RedownloadMmsAction;
import gogolook.callgogolook2.messaging.datamodel.action.ResendMessageAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import java.util.ArrayList;
import java.util.Iterator;
import p081h.p093b.p097b.p098a.C5576a;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11520b;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12197q;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.c.y.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c.class */
public class C11596c extends AbstractC11587a {

    /* renamed from: b */
    public final C11598b f25916b;

    /* renamed from: c */
    public final C11601e f25917c;

    /* renamed from: d */
    public final C11600d f25918d;

    /* renamed from: e */
    public final C11602f f25919e;

    /* renamed from: f */
    public final C11604h f25920f;

    /* renamed from: g */
    public final Context f25921g;

    /* renamed from: h */
    public final String f25922h;

    /* renamed from: i */
    public final C11611h f25923i;

    /* renamed from: j */
    public final C11633o f25924j;

    /* renamed from: k */
    public C11608e f25925k;

    /* renamed from: l */
    public final C11634p f25926l;

    /* renamed from: m */
    public LoaderManager f25927m;

    /* renamed from: n */
    public long f25928n = -1;

    /* renamed from: o */
    public int f25929o = -1;

    /* renamed from: p */
    public String f25930p;

    /* renamed from: q */
    public final int f25931q;

    /* renamed from: j.a.c0.c.y.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$a.class */
    public class RunnableC11597a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f25932a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f25933b;

        public RunnableC11597a(C11596c cVar, ArrayList arrayList, ArrayList arrayList2) {
            this.f25932a = arrayList;
            this.f25933b = arrayList2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5576a aVar = new C5576a(AbstractC11516a.m9413n().mo9412a());
            try {
                if (!this.f25932a.isEmpty()) {
                    aVar.m25118b(this.f25932a);
                }
                if (!this.f25933b.isEmpty()) {
                    aVar.m25120a(this.f25933b);
                }
            } catch (SQLiteFullException e) {
                C12153d0.m6982d("bugle_datamodel", "Unable to update contact", e);
            }
        }
    }

    /* renamed from: j.a.c0.c.y.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$b.class */
    public class C11598b extends ArrayList<AbstractC11599c> implements AbstractC11599c {
        public C11598b(C11596c cVar) {
        }

        public /* synthetic */ C11598b(C11596c cVar, RunnableC11597a aVar) {
            this(cVar);
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7730a(C11596c cVar) {
            Iterator<AbstractC11599c> it = iterator();
            while (it.hasNext()) {
                it.next().mo7730a(cVar);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7861a(C11596c cVar, Cursor cursor, @Nullable C11610g gVar, boolean z) {
            Iterator<AbstractC11599c> it = iterator();
            while (it.hasNext()) {
                it.next().mo7861a(cVar, cursor, gVar, z);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7850a(String str) {
            Iterator<AbstractC11599c> it = iterator();
            while (it.hasNext()) {
                it.next().mo7850a(str);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: b */
        public void mo7729b(C11596c cVar) {
            Iterator<AbstractC11599c> it = iterator();
            while (it.hasNext()) {
                it.next().mo7729b(cVar);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: c */
        public void mo7831c(C11596c cVar) {
            Iterator<AbstractC11599c> it = iterator();
            while (it.hasNext()) {
                it.next().mo7831c(cVar);
            }
        }
    }

    /* renamed from: j.a.c0.c.y.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$c.class */
    public interface AbstractC11599c {
        /* renamed from: a */
        void mo7730a(C11596c cVar);

        /* renamed from: a */
        void mo7861a(C11596c cVar, Cursor cursor, @Nullable C11610g gVar, boolean z);

        /* renamed from: a */
        void mo7850a(String str);

        /* renamed from: b */
        void mo7729b(C11596c cVar);

        /* renamed from: c */
        void mo7831c(C11596c cVar);
    }

    /* renamed from: j.a.c0.c.y.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$d.class */
    public class C11600d implements LoaderManager.LoaderCallbacks<Cursor> {

        /* renamed from: a */
        public final int f25934a;

        public C11600d(int i) {
            this.f25934a = i;
        }

        /* renamed from: a */
        public final C11610g m8969a(Cursor cursor) {
            if (cursor == null || cursor.getCount() <= 0) {
                return null;
            }
            int position = cursor.getPosition();
            if (!cursor.moveToLast()) {
                return null;
            }
            C11610g gVar = new C11610g();
            gVar.m8918a(cursor);
            cursor.move(position);
            return gVar;
        }

        /* renamed from: a */
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            boolean z;
            C11610g gVar;
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11603g gVar2 = null;
                if (cursor != null) {
                    gVar2 = new C11603g(cursor);
                    int i = C11596c.this.f25929o;
                    C11596c.this.f25929o = gVar2.getCount();
                    C11610g a = m8969a(gVar2);
                    if (a != null) {
                        long j = C11596c.this.f25928n;
                        C11596c.this.f25928n = a.m8881w();
                        String str = C11596c.this.f25930p;
                        C11596c.this.f25930p = a.m8887q();
                        if (!TextUtils.equals(str, C11596c.this.f25930p) || i >= C11596c.this.f25929o) {
                            gVar = null;
                            z = false;
                            if (i != -1) {
                                gVar = null;
                                z = false;
                                if (C11596c.this.f25928n != -1) {
                                    gVar = null;
                                    z = false;
                                    if (C11596c.this.f25928n > j) {
                                        gVar = a;
                                        z = false;
                                    }
                                }
                            }
                        } else {
                            z = true;
                            gVar = null;
                        }
                    } else {
                        C11596c.this.f25928n = -1L;
                        z = false;
                        gVar = null;
                    }
                } else {
                    C11596c.this.f25929o = -1;
                    gVar = null;
                    z = false;
                }
                C11596c.this.f25916b.mo7861a(C11596c.this, gVar2, gVar, z);
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Messages loader finished after unbinding mConversationId = " + C11596c.this.f25922h);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            C11520b bVar;
            C12151d.m7012a(2, i);
            String string = bundle.getString("bindingId");
            if (C11596c.this.m9045b(string)) {
                bVar = new C11520b(string, C11596c.this.f25921g, MessagingContentProvider.m27777a(C11596c.this.f25922h, Integer.valueOf(this.f25934a)), C11610g.m8921W(), null, null, null);
                C11596c.this.f25928n = -1L;
                C11596c.this.f25929o = -1;
            } else {
                C12153d0.m6981e("bugle_datamodel", "Creating messages loader after unbinding mConversationId = " + C11596c.this.f25922h);
                bVar = null;
            }
            return bVar;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11596c.this.f25916b.mo7861a(C11596c.this, null, null, false);
                C11596c.this.f25928n = -1L;
                C11596c.this.f25929o = -1;
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Messages loader reset after unbinding mConversationId = " + C11596c.this.f25922h);
        }
    }

    /* renamed from: j.a.c0.c.y.c$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$e.class */
    public class C11601e implements LoaderManager.LoaderCallbacks<Cursor> {
        public C11601e() {
        }

        public /* synthetic */ C11601e(C11596c cVar, RunnableC11597a aVar) {
            this();
        }

        /* renamed from: a */
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (!C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C12153d0.m6981e("bugle_datamodel", "Meta data loader finished after unbinding mConversationId = " + C11596c.this.f25922h);
            } else if (cursor.moveToNext()) {
                boolean z = true;
                if (cursor.getCount() != 1) {
                    z = false;
                }
                C12151d.m6999b(z);
                C11596c.this.f25925k.m8961a(cursor);
                C11596c.this.f25916b.mo7831c(C11596c.this);
            } else {
                C12153d0.m6981e("bugle_datamodel", "Meta data loader returned nothing for mConversationId = " + C11596c.this.f25922h);
                C11596c.this.f25916b.mo7850a(C11596c.this.f25922h);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            C11520b bVar;
            C12151d.m7012a(1, i);
            String string = bundle.getString("bindingId");
            if (C11596c.this.m9045b(string)) {
                bVar = new C11520b(string, C11596c.this.f25921g, MessagingContentProvider.m27774b(C11596c.this.f25922h), C11608e.f25949n, null, null, null);
            } else {
                C12153d0.m6981e("bugle_datamodel", "Creating messages loader after unbinding mConversationId = " + C11596c.this.f25922h);
                bVar = null;
            }
            return bVar;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11596c.this.f25925k = new C11608e();
                C11596c.this.f25916b.mo7831c(C11596c.this);
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Meta data loader reset after unbinding mConversationId = " + C11596c.this.f25922h);
        }
    }

    /* renamed from: j.a.c0.c.y.c$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$f.class */
    public class C11602f implements LoaderManager.LoaderCallbacks<Cursor> {
        public C11602f() {
        }

        public /* synthetic */ C11602f(C11596c cVar, RunnableC11597a aVar) {
            this();
        }

        /* renamed from: a */
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11596c.this.f25923i.m8877a(cursor);
                C11596c.this.f25916b.mo7729b(C11596c.this);
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Participant loader finished after unbinding mConversationId = " + C11596c.this.f25922h);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            C11520b bVar;
            C12151d.m7012a(3, i);
            String string = bundle.getString("bindingId");
            if (C11596c.this.m9045b(string)) {
                bVar = new C11520b(string, C11596c.this.f25921g, MessagingContentProvider.m27772c(C11596c.this.f25922h), ParticipantData.C4657b.f11256a, null, null, null);
            } else {
                C12153d0.m6981e("bugle_datamodel", "Creating participant loader after unbinding mConversationId = " + C11596c.this.f25922h);
                bVar = null;
            }
            return bVar;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11596c.this.f25923i.m8877a((Cursor) null);
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Participant loader reset after unbinding mConversationId = " + C11596c.this.f25922h);
        }
    }

    /* renamed from: j.a.c0.c.y.c$g */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$g.class */
    public static class C11603g extends CursorWrapper {

        /* renamed from: a */
        public final int f25938a;

        public C11603g(Cursor cursor) {
            super(cursor);
            this.f25938a = cursor.getCount();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public int getPosition() {
            return (this.f25938a - super.getPosition()) - 1;
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean isAfterLast() {
            return super.isBeforeFirst();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean isBeforeFirst() {
            return super.isAfterLast();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean isFirst() {
            return super.isLast();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean isLast() {
            return super.isFirst();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean move(int i) {
            return super.move(-i);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToFirst() {
            return super.moveToLast();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToLast() {
            return super.moveToFirst();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToNext() {
            return super.moveToPrevious();
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToPosition(int i) {
            return super.moveToPosition((this.f25938a - i) - 1);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public boolean moveToPrevious() {
            return super.moveToNext();
        }
    }

    /* renamed from: j.a.c0.c.y.c$h */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$h.class */
    public class C11604h implements LoaderManager.LoaderCallbacks<Cursor> {
        public C11604h() {
        }

        public /* synthetic */ C11604h(C11596c cVar, RunnableC11597a aVar) {
            this();
        }

        /* renamed from: a */
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11596c.this.f25924j.m8754a(cursor);
                C11596c.this.f25926l.m8747a(C11596c.this.f25924j.m8752a(true));
                C11596c.this.f25916b.mo7730a(C11596c.this);
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Self loader finished after unbinding mConversationId = " + C11596c.this.f25922h);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            C11520b bVar;
            C12151d.m7012a(4, i);
            String string = bundle.getString("bindingId");
            if (C11596c.this.m9045b(string)) {
                bVar = new C11520b(string, C11596c.this.f25921g, MessagingContentProvider.f11180h, ParticipantData.C4657b.f11256a, "sub_id <> ?", new String[]{String.valueOf(-2)}, null);
            } else {
                C12153d0.m6981e("bugle_datamodel", "Creating self loader after unbinding mConversationId = " + C11596c.this.f25922h);
                bVar = null;
            }
            return bVar;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
            if (C11596c.this.m9045b(((C11520b) loader).m9394f())) {
                C11596c.this.f25924j.m8754a((Cursor) null);
                return;
            }
            C12153d0.m6981e("bugle_datamodel", "Self loader reset after unbinding mConversationId = " + C11596c.this.f25922h);
        }
    }

    /* renamed from: j.a.c0.c.y.c$i */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/c$i.class */
    public static class C11605i implements AbstractC11599c {
        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7861a(C11596c cVar, Cursor cursor, @Nullable C11610g gVar, boolean z) {
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7850a(String str) {
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: c */
        public void mo7831c(C11596c cVar) {
        }
    }

    public C11596c(Context context, AbstractC11599c cVar, String str, int i) {
        C12151d.m6999b(str != null);
        this.f25921g = context;
        this.f25922h = str;
        this.f25931q = i;
        this.f25917c = new C11601e(this, null);
        this.f25918d = new C11600d(i);
        this.f25919e = new C11602f(this, null);
        this.f25920f = new C11604h(this, null);
        this.f25923i = new C11611h();
        this.f25925k = new C11608e();
        this.f25924j = new C11633o();
        this.f25926l = new C11634p(context);
        this.f25916b = new C11598b(this, null);
        this.f25916b.add(cVar);
    }

    /* renamed from: a */
    public static C11634p.C11635a m8999a(String str, boolean z, C11634p pVar, C11633o oVar) {
        if (!C14017g4.m2804t() || oVar.m8750b(true) <= 1) {
            return null;
        }
        return pVar.m8748a(str, z);
    }

    /* renamed from: a */
    public int m8998a(boolean z) {
        return this.f25924j.m8750b(z);
    }

    /* renamed from: a */
    public MessageData m9001a(C11610g gVar) {
        MessageData messageData = new MessageData();
        String a = C11834j.m8121a(this.f25921g.getResources(), gVar.m8885s());
        if (!TextUtils.isEmpty(a)) {
            messageData.m27605c(this.f25921g.getResources().getString(R$string.message_fwd, a));
        }
        for (MessagePartData messagePartData : gVar.m8883u()) {
            messageData.m27623a(messagePartData.m27558z() ? MessagePartData.m27568c(messagePartData.m27563u()) : PendingAttachmentData.m27513a(messagePartData.m27569c(), messagePartData.m27567q()));
        }
        return messageData;
    }

    /* renamed from: a */
    public C11634p.C11635a m9000a(String str, boolean z) {
        return m8999a(str, z, this.f25926l, this.f25924j);
    }

    /* renamed from: a */
    public void m9011a(LoaderManager loaderManager, AbstractC11590d<C11596c> dVar) {
        Bundle bundle = new Bundle();
        bundle.putString("bindingId", dVar.mo9035a());
        this.f25927m = loaderManager;
        this.f25927m.initLoader(1, bundle, this.f25917c);
        this.f25927m.initLoader(2, bundle, this.f25918d);
        this.f25927m.initLoader(3, bundle, this.f25919e);
        this.f25927m.initLoader(4, bundle, this.f25920f);
    }

    /* renamed from: a */
    public void m9010a(C11589c<C11596c> cVar, int i) {
        C12151d.m6999b(cVar.mo9033b() == this);
        C11608e eVar = this.f25925k;
        if (eVar == null) {
            DeleteConversationAction.m27722a(new String[]{this.f25922h}, new long[]{System.currentTimeMillis()}, i);
        } else {
            eVar.m8962a(i);
        }
    }

    /* renamed from: a */
    public void m9009a(AbstractC11590d<C11596c> dVar, MessageData messageData) {
        C12151d.m6999b(TextUtils.equals(this.f25922h, messageData.m27593s()));
        C12151d.m6999b(dVar.mo9033b() == this);
        if (!C14017g4.m2804t() || messageData.m27638H() == null) {
            InsertNewMessageAction.m27708a(messageData);
        } else {
            int f = AbstractC12181l0.m6886t().mo6875f();
            if (f == -1 || !this.f25924j.m8751b(messageData.m27638H())) {
                InsertNewMessageAction.m27708a(messageData);
            } else {
                InsertNewMessageAction.m27707a(messageData, f);
            }
        }
        if (m8975p()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator<ParticipantData> it = this.f25923i.iterator();
            while (it.hasNext()) {
                ParticipantData next = it.next();
                if (!next.m27551G()) {
                    if (next.m27552F()) {
                        arrayList2.add(next.m27519x());
                    } else {
                        arrayList.add(next.m27519x());
                    }
                }
            }
            if (C12197q.m6821c()) {
                AbstractAsyncTaskC12189n0.m6856a(new RunnableC11597a(this, arrayList, arrayList2));
            }
        }
    }

    /* renamed from: a */
    public void m9008a(AbstractC11590d<C11596c> dVar, String str) {
        C12151d.m6999b(dVar.mo9033b() == this);
        C12151d.m7000b(str);
        DeleteMessageAction.m27721b(str);
    }

    /* renamed from: a */
    public void m9007a(AbstractC11599c cVar) {
        C12151d.m7013a();
        this.f25916b.add(cVar);
    }

    /* renamed from: b */
    public void m8997b(AbstractC11590d<C11596c> dVar, String str) {
        C12151d.m6999b(dVar.mo9033b() == this);
        C12151d.m7000b(str);
        RedownloadMmsAction.m27670b(str);
    }

    /* renamed from: c */
    public void m8995c(AbstractC11590d<C11596c> dVar, String str) {
        C12151d.m6999b(dVar.mo9033b() == this);
        C12151d.m7000b(str);
        ResendMessageAction.m27669b(str);
    }

    /* renamed from: d */
    public ParticipantData m8992d(String str) {
        return this.f25924j.m8753a(str);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        this.f25916b.clear();
        LoaderManager loaderManager = this.f25927m;
        if (loaderManager != null) {
            loaderManager.destroyLoader(1);
            this.f25927m.destroyLoader(2);
            this.f25927m.destroyLoader(3);
            this.f25927m.destroyLoader(4);
            this.f25927m = null;
        }
    }

    /* renamed from: f */
    public String m8990f() {
        return this.f25922h;
    }

    /* renamed from: g */
    public String m8988g() {
        return this.f25925k.m8954e();
    }

    /* renamed from: h */
    public ParticipantData m8986h() {
        return this.f25924j.m8755a();
    }

    /* renamed from: i */
    public boolean m8984i() {
        return this.f25925k.m8955d();
    }

    /* renamed from: j */
    public int m8982j() {
        return this.f25923i.m8875b();
    }

    /* renamed from: k */
    public ParticipantData m8980k() {
        return this.f25923i.m8874c();
    }

    /* renamed from: l */
    public String m8979l() {
        return this.f25925k.m8950i();
    }

    /* renamed from: m */
    public long m8978m() {
        return this.f25925k.m8949j();
    }

    /* renamed from: n */
    public String m8977n() {
        ParticipantData k = m8980k();
        if (k == null) {
            return null;
        }
        String x = k.m27519x();
        if (TextUtils.isEmpty(x) || !C11832i.m8157c(x)) {
            return null;
        }
        return x;
    }

    /* renamed from: o */
    public C11611h m8976o() {
        return this.f25923i;
    }

    /* renamed from: p */
    public boolean m8975p() {
        return this.f25923i.isLoaded();
    }

    /* renamed from: q */
    public C11634p m8974q() {
        return this.f25926l;
    }

    /* renamed from: r */
    public boolean m8973r() {
        return mo9044d() && AbstractC11528g.m9259k().m9263b(this.f25922h);
    }

    /* renamed from: s */
    public void m8972s() {
        AbstractC11528g.m9259k().m9261d(this.f25922h);
        C11522d.m9291a(this.f25922h, this.f25931q);
    }

    /* renamed from: t */
    public void m8971t() {
        AbstractC11528g.m9259k().m9261d(null);
    }
}
