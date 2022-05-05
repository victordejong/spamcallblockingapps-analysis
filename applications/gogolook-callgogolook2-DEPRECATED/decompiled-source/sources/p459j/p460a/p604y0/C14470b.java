package p459j.p460a.p604y0;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.media2.exoplayer.external.util.MimeTypes;
import kotlin.Metadata;
import p459j.p460a.p604y0.p605c.C14474b;
import p459j.p460a.p604y0.p608d.C14508b;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \r2\u00020\u0001:\u0001\rB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J%\u0010\u0007\u001a\u0002H\b\"\b\b��\u0010\b*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000bH\u0016¢\u0006\u0002\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/vas/ViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", MimeTypes.BASE_TYPE_APPLICATION, "Landroid/app/Application;", "vasRepository", "Lgogolook/callgogolook2/vas/data/VasRepository;", "(Landroid/app/Application;Lgogolook/callgogolook2/vas/data/VasRepository;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.b */
/* loaded from: classes3-dex2jar.jar:j/a/y0/b.class */
public final class C14470b extends ViewModelProvider.NewInstanceFactory {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: c */
    public static volatile C14470b f32371c;

    /* renamed from: d */
    public static final C14471a f32372d = new C14471a(null);

    /* renamed from: a */
    public final Application f32373a;

    /* renamed from: b */
    public final C14474b f32374b;

    /* renamed from: j.a.y0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/b$a.class */
    public static final class C14471a {
        public C14471a() {
        }

        public /* synthetic */ C14471a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14470b m1268a(Application application) {
            C14470b bVar;
            C15149k.m377b(application, MimeTypes.BASE_TYPE_APPLICATION);
            C14470b bVar2 = C14470b.f32371c;
            if (bVar2 != null) {
                bVar = bVar2;
            } else {
                synchronized (C14470b.class) {
                    try {
                        C14470b bVar3 = C14470b.f32371c;
                        if (bVar3 != null) {
                            bVar = bVar3;
                        } else {
                            C14469a aVar = C14469a.f32370a;
                            Context applicationContext = application.getApplicationContext();
                            C15149k.m383a((Object) applicationContext, "application.applicationContext");
                            C14470b bVar4 = new C14470b(application, aVar.m1271a(applicationContext), null);
                            C14470b.f32371c = bVar4;
                            bVar = bVar4;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return bVar;
        }
    }

    public C14470b(Application application, C14474b bVar) {
        this.f32373a = application;
        this.f32374b = bVar;
    }

    public /* synthetic */ C14470b(Application application, C14474b bVar, C15145g gVar) {
        this(application, bVar);
    }

    @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> cls) {
        C15149k.m377b(cls, "modelClass");
        if (cls.isAssignableFrom(C14508b.class)) {
            return new C14508b(this.f32373a, this.f32374b);
        }
        throw new IllegalArgumentException("Unknown ViewModel class: " + cls.getName());
    }
}
