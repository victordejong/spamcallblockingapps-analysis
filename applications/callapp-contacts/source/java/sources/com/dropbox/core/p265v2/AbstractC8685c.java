package com.dropbox.core.p265v2;

import com.amazonaws.services.p101s3.util.Mimetypes;
import com.dropbox.core.BadResponseException;
import com.dropbox.core.C8573e;
import com.dropbox.core.C8577h;
import com.dropbox.core.C8600i;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.InvalidAccessTokenException;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.RetryException;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.oauth.C8627c;
import com.dropbox.core.oauth.DbxOAuthException;
import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p265v2.auth.C8669b;
import com.dropbox.core.p265v2.p268c.C8688a;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.dropbox.core.v2.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c.class */
public abstract class AbstractC8685c {

    /* renamed from: c */
    private static final JsonFactory f30786c = new JsonFactory();

    /* renamed from: d */
    private static final Random f30787d = new Random();

    /* renamed from: a */
    public final C8573e f30788a;

    /* renamed from: b */
    public final String f30789b;

    /* renamed from: e */
    private final C8577h f30790e;

    /* renamed from: f */
    private final C8688a f30791f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.c$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c$1.class */
    public final class C86861 implements AbstractC8687a<ResT> {

        /* renamed from: a */
        String f30792a;

        /* renamed from: b */
        final /* synthetic */ boolean f30793b;

        /* renamed from: c */
        final /* synthetic */ List f30794c;

        /* renamed from: d */
        final /* synthetic */ String f30795d;

        /* renamed from: e */
        final /* synthetic */ String f30796e;

        /* renamed from: f */
        final /* synthetic */ byte[] f30797f;

        /* renamed from: g */
        final /* synthetic */ AbstractC8547c f30798g;

        /* renamed from: h */
        final /* synthetic */ AbstractC8547c f30799h;

        C86861(boolean z, List list, String str, String str2, byte[] bArr, AbstractC8547c abstractC8547c, AbstractC8547c abstractC8547c2) {
            AbstractC8685c.this = r4;
            this.f30793b = z;
            this.f30794c = list;
            this.f30795d = str;
            this.f30796e = str2;
            this.f30797f = bArr;
            this.f30798g = abstractC8547c;
            this.f30799h = abstractC8547c2;
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [ResT, java.lang.Object] */
        @Override // com.dropbox.core.p265v2.AbstractC8685c.AbstractC8687a
        /* renamed from: a */
        public final ResT mo25167a() throws DbxWrappedException, DbxException {
            if (!this.f30793b) {
                AbstractC8685c.this.mo25174a(this.f30794c);
            }
            AbstractC8582a.C8584b m25282a = C8600i.m25282a(AbstractC8685c.this.f30790e, "OfficialDropboxJavaSDKv2", this.f30795d, this.f30796e, this.f30797f, this.f30794c);
            try {
                int i = m25282a.f30566a;
                if (i == 200) {
                    return this.f30798g.deserialize(m25282a.f30567b);
                }
                if (i == 409) {
                    throw DbxWrappedException.m25357a(this.f30799h, m25282a, this.f30792a);
                }
                throw C8600i.m25263b(m25282a);
            } catch (JsonProcessingException e) {
                String m25260c = C8600i.m25260c(m25282a);
                throw new BadResponseException(m25260c, "Bad JSON: " + e.getMessage(), e);
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c$a.class */
    public interface AbstractC8687a<T> {
        /* renamed from: a */
        T mo25167a() throws DbxWrappedException, DbxException;
    }

    public AbstractC8685c(C8577h c8577h, C8573e c8573e, String str, C8688a c8688a) {
        Objects.requireNonNull(c8577h, "requestConfig");
        Objects.requireNonNull(c8573e, "host");
        this.f30790e = c8577h;
        this.f30788a = c8573e;
        this.f30789b = str;
        this.f30791f = c8688a;
    }

    /* renamed from: a */
    private static <T> T m25179a(int i, AbstractC8687a<T> abstractC8687a) throws DbxWrappedException, DbxException {
        if (i == 0) {
            return abstractC8687a.mo25167a();
        }
        int i2 = 0;
        while (true) {
            try {
                return abstractC8687a.mo25167a();
            } catch (RetryException e) {
                if (i2 >= i) {
                    throw e;
                }
                int i3 = i2 + 1;
                long nextInt = e.f30447a + f30787d.nextInt(1000);
                i2 = i3;
                if (nextInt > 0) {
                    try {
                        Thread.sleep(nextInt);
                        i2 = i3;
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                        i2 = i3;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static <T> byte[] m25178a(AbstractC8547c<T> abstractC8547c, T t) throws DbxException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            abstractC8547c.serialize((AbstractC8547c<T>) t, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw C8636d.m25222a("Impossible", (Throwable) e);
        }
    }

    /* renamed from: b */
    private <T> T m25172b(int i, AbstractC8687a<T> abstractC8687a) throws DbxWrappedException, DbxException {
        try {
            return (T) m25179a(i, abstractC8687a);
        } catch (InvalidAccessTokenException e) {
            if (e.getMessage() == null) {
                throw e;
            }
            if (!C8669b.f30759e.equals(e.f30440a) || !mo25173b()) {
                throw e;
            }
            mo25180a();
            return (T) m25179a(i, abstractC8687a);
        }
    }

    /* renamed from: b */
    private static <T> String m25171b(AbstractC8547c<T> abstractC8547c, T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonGenerator createGenerator = f30786c.createGenerator(stringWriter);
            createGenerator.setHighestNonEscapedChar(WebSocketProtocol.PAYLOAD_SHORT);
            abstractC8547c.serialize((AbstractC8547c<T>) t, createGenerator);
            createGenerator.flush();
            return stringWriter.toString();
        } catch (IOException e) {
            throw C8636d.m25222a("Impossible", (Throwable) e);
        }
    }

    /* renamed from: e */
    private void m25168e() throws DbxException {
        if (mo25170c()) {
            try {
                mo25180a();
            } catch (DbxOAuthException e) {
                if (!"invalid_grant".equals(e.f30621a.f30632b)) {
                    throw e;
                }
            }
        }
    }

    /* renamed from: a */
    public final <ArgT> AbstractC8582a.AbstractC8585c m25176a(String str, String str2, ArgT argt, AbstractC8547c<ArgT> abstractC8547c) throws DbxException {
        String m25273a = C8600i.m25273a(str, str2);
        ArrayList arrayList = new ArrayList();
        m25168e();
        mo25174a(arrayList);
        C8600i.m25269a(arrayList, this.f30790e);
        C8600i.m25267a(arrayList, this.f30791f);
        arrayList.add(new AbstractC8582a.C8583a("Content-Type", Mimetypes.MIMETYPE_OCTET_STREAM));
        List<AbstractC8582a.C8583a> m25268a = C8600i.m25268a(arrayList, this.f30790e, "OfficialDropboxJavaSDKv2");
        m25268a.add(new AbstractC8582a.C8583a("Dropbox-API-Arg", m25171b(abstractC8547c, argt)));
        try {
            return this.f30790e.f30546c.mo25288b(m25273a, m25268a);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    /* renamed from: a */
    public abstract C8627c mo25180a() throws DbxException;

    /* renamed from: a */
    public final <ArgT, ResT, ErrT> ResT m25175a(String str, String str2, ArgT argt, AbstractC8547c<ArgT> abstractC8547c, AbstractC8547c<ResT> abstractC8547c2, AbstractC8547c<ErrT> abstractC8547c3) throws DbxWrappedException, DbxException {
        byte[] m25178a = m25178a(abstractC8547c, argt);
        ArrayList arrayList = new ArrayList();
        m25168e();
        if (!this.f30788a.f30536e.equals(str)) {
            C8600i.m25269a(arrayList, this.f30790e);
            C8600i.m25267a(arrayList, this.f30791f);
        }
        arrayList.add(new AbstractC8582a.C8583a("Content-Type", "application/json; charset=utf-8"));
        int i = this.f30790e.f30547d;
        C86861 c86861 = new C86861(false, arrayList, str, str2, m25178a, abstractC8547c2, abstractC8547c3);
        c86861.f30792a = this.f30789b;
        return (ResT) m25172b(i, c86861);
    }

    /* renamed from: a */
    protected abstract void mo25174a(List<AbstractC8582a.C8583a> list);

    /* renamed from: b */
    abstract boolean mo25173b();

    /* renamed from: c */
    abstract boolean mo25170c();

    /* renamed from: d */
    public final C8577h m25169d() {
        return this.f30790e;
    }
}
