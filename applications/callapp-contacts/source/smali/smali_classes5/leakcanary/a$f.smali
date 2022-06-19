.class final Lleakcanary/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "runnable",
        "Ljava/lang/Runnable;",
        "newThread"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lleakcanary/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lleakcanary/a$f;

    invoke-direct {v0}, Lleakcanary/a$f;-><init>()V

    sput-object v0, Lleakcanary/a$f;->a:Lleakcanary/a$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 695
    new-instance v0, Lleakcanary/a$f$a;

    invoke-direct {v0, p1}, Lleakcanary/a$f$a;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "plumber-android-leaks"

    .line 701
    invoke-virtual {v0, p1}, Lleakcanary/a$f$a;->setName(Ljava/lang/String;)V

    .line 702
    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method
