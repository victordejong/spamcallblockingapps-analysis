.class public final Lc/c/a/a/b/c/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static final a:Lc/c/a/a/b/c/d;

.field private static volatile b:Lc/c/a/a/b/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/a/b/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/b/c/f;-><init>(Lc/c/a/a/b/c/e;)V

    sput-object v0, Lc/c/a/a/b/c/g;->a:Lc/c/a/a/b/c/d;

    sput-object v0, Lc/c/a/a/b/c/g;->b:Lc/c/a/a/b/c/d;

    return-void
.end method

.method public static a()Lc/c/a/a/b/c/d;
    .locals 1

    sget-object v0, Lc/c/a/a/b/c/g;->b:Lc/c/a/a/b/c/d;

    return-object v0
.end method
