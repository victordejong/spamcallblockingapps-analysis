package p193e.p194a.p1213s2;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioAttributes;
import android.speech.tts.TextToSpeech;
import com.razorpay.AnalyticsConstants;
import com.truecaller.announce_caller_id.C2892R;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallIgnoredReason;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallType;
import com.truecaller.announce_caller_id.analytics.events.TextToSpeechInitError;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1213s2.p1214g.AbstractC20201a;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.z.c.l;
/* renamed from: e.a.s2.b */
/* loaded from: classes5-dex2jar.jar:e/a/s2/b.class */
public final class C20195b implements AbstractC20194a {

    /* renamed from: a */
    public boolean f56901a;

    /* renamed from: b */
    public volatile String f56902b;

    /* renamed from: c */
    public TextToSpeech f56903c;

    /* renamed from: d */
    public Locale f56904d = C8502h.f26287b;

    /* renamed from: e */
    public final int f56905e = C2892R.string.incoming_call_announcement_prefix;

    /* renamed from: f */
    public final AbstractC20197c f56906f;

    /* renamed from: g */
    public final AbstractC20201a f56907g;

    /* renamed from: h */
    public final Context f56908h;

    /* renamed from: e.a.s2.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/s2/b$a.class */
    public static final class C20196a implements TextToSpeech.OnInitListener {

        /* renamed from: b */
        public final /* synthetic */ C20200f f56910b;

        public C20196a(C20200f c20200f) {
            C20195b.this = r4;
            this.f56910b = c20200f;
        }

        @Override // android.speech.tts.TextToSpeech.OnInitListener
        public final void onInit(int i) {
            C20195b c20195b = C20195b.this;
            C20200f c20200f = this.f56910b;
            Objects.requireNonNull(c20195b);
            if (i == -1) {
                c20195b.f56901a = false;
                Locale locale = c20195b.f56904d;
                l.d(locale, AnalyticsConstants.LOCALE);
                c20195b.m11364c(-1, locale);
            } else if (i != 0) {
            } else {
                c20195b.f56901a = true;
                TextToSpeech textToSpeech = c20195b.f56903c;
                if (textToSpeech != null) {
                    textToSpeech.setAudioAttributes(new AudioAttributes.Builder().setContentType(1).setUsage(6).build());
                }
                c20195b.m11363d(c20200f);
            }
        }
    }

    @Inject
    public C20195b(AbstractC20197c abstractC20197c, AbstractC20201a abstractC20201a, Context context) {
        l.e(abstractC20197c, "announceCallerIdManager");
        l.e(abstractC20201a, "eventLogger");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f56906f = abstractC20197c;
        this.f56907g = abstractC20201a;
        this.f56908h = context;
    }

    @Override // p193e.p194a.p1213s2.AbstractC20194a
    /* renamed from: a */
    public void mo11366a() {
        if (this.f56906f.mo11356m()) {
            this.f56907g.mo11349j(AnnounceCallIgnoredReason.CALL_BLOCKED);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    @Override // p193e.p194a.p1213s2.AbstractC20194a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11365b(p193e.p194a.p1213s2.C20200f r5) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r5
            java.lang.String r1 = "callAnnouncementInfo"
            s1.z.c.l.e(r0, r1)     // Catch: java.lang.Throwable -> Lbc
            r0 = r4
            java.util.Locale r1 = p193e.p194a.p372b0.p417k.C8502h.f26287b     // Catch: java.lang.Throwable -> Lbc
            r0.f56904d = r1     // Catch: java.lang.Throwable -> Lbc
            r0 = r5
            java.lang.String r0 = r0.f56916a     // Catch: java.lang.Throwable -> Lbc
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L2a
            r0 = r6
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Lbc
            if (r0 != 0) goto L24
            goto L2a
        L24:
            r0 = 0
            r8 = r0
            goto L2d
        L2a:
            r0 = 1
            r8 = r0
        L2d:
            r0 = r8
            if (r0 == 0) goto L4a
            r0 = r4
            e.a.s2.c r0 = r0.f56906f     // Catch: java.lang.Throwable -> Lbc
            boolean r0 = r0.mo11356m()     // Catch: java.lang.Throwable -> Lbc
            if (r0 == 0) goto L4a
            r0 = r4
            e.a.s2.g.a r0 = r0.f56907g     // Catch: java.lang.Throwable -> Lbc
            com.truecaller.announce_caller_id.analytics.events.AnnounceCallIgnoredReason r1 = com.truecaller.announce_caller_id.analytics.events.AnnounceCallIgnoredReason.UNKNOWN_CALLER     // Catch: java.lang.Throwable -> Lbc
            r0.mo11349j(r1)     // Catch: java.lang.Throwable -> Lbc
        L4a:
            r0 = r7
            r9 = r0
            r0 = r4
            java.lang.String r0 = r0.f56902b     // Catch: java.lang.Throwable -> Lbc
            r1 = r5
            java.lang.String r1 = r1.f56917b     // Catch: java.lang.Throwable -> Lbc
            boolean r0 = s1.z.c.l.a(r0, r1)     // Catch: java.lang.Throwable -> Lbc
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L70
            r0 = r7
            r9 = r0
            r0 = r4
            e.a.s2.c r0 = r0.f56906f     // Catch: java.lang.Throwable -> Lbc
            r1 = r5
            boolean r0 = r0.mo11357l(r1)     // Catch: java.lang.Throwable -> Lbc
            if (r0 == 0) goto L70
            r0 = 1
            r9 = r0
        L70:
            r0 = r9
            if (r0 == 0) goto Lb9
            r0 = r8
            if (r0 == 0) goto L7d
            goto Lb9
        L7d:
            r0 = r4
            android.speech.tts.TextToSpeech r0 = r0.f56903c     // Catch: java.lang.Throwable -> Lbc
            if (r0 == 0) goto L93
            r0 = r4
            boolean r0 = r0.f56901a     // Catch: java.lang.Throwable -> Lbc
            if (r0 == 0) goto L93
            r0 = r4
            r1 = r5
            r0.m11363d(r1)     // Catch: java.lang.Throwable -> Lbc
            goto Lb6
        L93:
            android.speech.tts.TextToSpeech r0 = new android.speech.tts.TextToSpeech     // Catch: java.lang.Throwable -> Lbc
            r10 = r0
            r0 = r4
            android.content.Context r0 = r0.f56908h     // Catch: java.lang.Throwable -> Lbc
            r11 = r0
            e.a.s2.b$a r0 = new e.a.s2.b$a     // Catch: java.lang.Throwable -> Lbc
            r6 = r0
            r0 = r6
            r1 = r4
            r2 = r5
            r0.<init>(r2)     // Catch: java.lang.Throwable -> Lbc
            r0 = r10
            r1 = r11
            r2 = r6
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> Lbc
            r0 = r4
            r1 = r10
            r0.f56903c = r1     // Catch: java.lang.Throwable -> Lbc
        Lb6:
            r0 = r4
            monitor-exit(r0)
            return
        Lb9:
            r0 = r4
            monitor-exit(r0)
            return
        Lbc:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1213s2.C20195b.mo11365b(e.a.s2.f):void");
    }

    /* renamed from: c */
    public final void m11364c(Integer num, Locale locale) {
        TextToSpeechInitError textToSpeechInitError = (num != null && num.intValue() == -1) ? TextToSpeechInitError.LANGUAGE_FILE_NOT_AVAILABLE : (num != null && num.intValue() == -2) ? TextToSpeechInitError.LANGUAGE_NOT_SUPPORTED : TextToSpeechInitError.UNKNOWN;
        AbstractC20201a abstractC20201a = this.f56907g;
        String iSO3Language = locale.getISO3Language();
        l.d(iSO3Language, "locale.isO3Language");
        abstractC20201a.mo11354a(textToSpeechInitError, iSO3Language);
    }

    /* renamed from: d */
    public final void m11363d(C20200f c20200f) {
        Locale locale;
        TextToSpeech textToSpeech = this.f56903c;
        if (textToSpeech != null) {
            int isLanguageAvailable = textToSpeech.isLanguageAvailable(this.f56904d);
            if (isLanguageAvailable == -1 || isLanguageAvailable == -2) {
                Locale locale2 = this.f56904d;
                l.d(locale2, AnalyticsConstants.LOCALE);
                m11364c(Integer.valueOf(isLanguageAvailable), locale2);
                locale = Locale.ENGLISH;
                this.f56904d = locale;
            } else {
                locale = this.f56904d;
            }
            textToSpeech.setLanguage(locale);
        }
        Context context = this.f56908h;
        Locale locale3 = this.f56904d;
        int i = this.f56905e;
        String str = c20200f.f56916a;
        if (str == null) {
            str = "";
        }
        Resources resources = context.getResources();
        l.d(resources, "resources");
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.setLocale(locale3);
        String string = context.createConfigurationContext(configuration).getString(i, str);
        l.d(string, "createConfigurationConte…tString(resourceId, args)");
        TextToSpeech textToSpeech2 = this.f56903c;
        if (textToSpeech2 != null) {
            textToSpeech2.speak(string, 1, C22128a.m8687M0("streamType", 2), c20200f.f56917b);
        }
        AbstractC20201a abstractC20201a = this.f56907g;
        AnnounceCallType announceCallType = c20200f.f56918c ? AnnounceCallType.VOIP : AnnounceCallType.PSTN;
        boolean z = c20200f.f56919d;
        boolean mo11355n = this.f56906f.mo11355n();
        Locale locale4 = this.f56904d;
        l.d(locale4, AnalyticsConstants.LOCALE);
        String iSO3Language = locale4.getISO3Language();
        l.d(iSO3Language, "locale.isO3Language");
        abstractC20201a.mo11350g(z, mo11355n, announceCallType, iSO3Language);
        this.f56902b = c20200f.f56917b;
    }

    @Override // p193e.p194a.p1213s2.AbstractC20194a
    public void release() {
        TextToSpeech textToSpeech = this.f56903c;
        if (textToSpeech != null) {
            textToSpeech.shutdown();
        }
        this.f56903c = null;
        this.f56902b = null;
    }
}
