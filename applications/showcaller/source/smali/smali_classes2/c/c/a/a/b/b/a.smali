.class public final Lc/c/a/a/b/b/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# static fields
.field private static final a:Lc/c/a/a/b/b/b;

.field private static volatile b:Lc/c/a/a/b/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/a/b/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/b/b/c;-><init>(Lc/c/a/a/b/b/d;)V

    .line 2
    sput-object v0, Lc/c/a/a/b/b/a;->a:Lc/c/a/a/b/b/b;

    sput-object v0, Lc/c/a/a/b/b/a;->b:Lc/c/a/a/b/b/b;

    return-void
.end method

.method public static a()Lc/c/a/a/b/b/b;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/a/b/b/a;->b:Lc/c/a/a/b/b/b;

    return-object v0
.end method
