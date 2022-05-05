package p459j.p460a.p604y0.p605c;

import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\bf\u0018��2\u00020\u0001:\u0001\u0013J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H&J&\u0010\t\u001a\u00020\u00032\u0014\u0010\u0006\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\u00072\u0006\u0010\f\u001a\u00020\rH&J\u001e\u0010\u000e\u001a\u00020\u00032\u0014\u0010\u0006\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\u0007H&J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H&J&\u0010\u0011\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H&¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/vas/data/VasDataSource;", "", "deleteOldMessages", "", "date", "Ljava/util/Date;", "callback", "Lgogolook/callgogolook2/vas/data/VasDataSource$VasCallback;", "", "getLastScannedVasMessages", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "lastScannedTime", "", "getVasMessages", "saveMessage", "message", "saveMessages", "messageList", "VasCallback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.c.a */
/* loaded from: classes3-dex2jar.jar:j/a/y0/c/a.class */
public interface AbstractC14472a {

    /* renamed from: j.a.y0.c.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/a$a.class */
    public interface AbstractC14473a<T> {
        /* renamed from: a */
        void mo1175a(T t);

        /* renamed from: a */
        void mo1174a(Throwable th);
    }

    /* renamed from: a */
    void mo1263a(VasMessageRealm vasMessageRealm, AbstractC14473a<Integer> aVar);

    /* renamed from: a */
    void mo1262a(AbstractC14473a<List<VasMessageRealm>> aVar);

    /* renamed from: a */
    void mo1261a(AbstractC14473a<List<VasMessageRealm>> aVar, long j);

    /* renamed from: a */
    void mo1259a(Date date, AbstractC14473a<Integer> aVar);

    /* renamed from: a */
    void mo1258a(List<? extends VasMessageRealm> list, AbstractC14473a<Integer> aVar);
}
