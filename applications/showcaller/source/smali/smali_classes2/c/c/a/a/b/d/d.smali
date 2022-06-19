.class public final Lc/c/a/a/b/d/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"


# static fields
.field private static final a:Lc/c/a/a/b/d/a;

.field private static volatile b:Lc/c/a/a/b/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/a/b/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/b/d/c;-><init>(Lc/c/a/a/b/d/b;)V

    sput-object v0, Lc/c/a/a/b/d/d;->a:Lc/c/a/a/b/d/a;

    sput-object v0, Lc/c/a/a/b/d/d;->b:Lc/c/a/a/b/d/a;

    return-void
.end method

.method public static a()Lc/c/a/a/b/d/a;
    .locals 1

    sget-object v0, Lc/c/a/a/b/d/d;->b:Lc/c/a/a/b/d/a;

    return-object v0
.end method
