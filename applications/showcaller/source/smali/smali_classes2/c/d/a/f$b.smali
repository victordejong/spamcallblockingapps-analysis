.class Lc/d/a/f$b;
.super Ljava/lang/Object;
.source "FileDownloadEventPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lc/d/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/f;-><init>(Lc/d/a/f$a;)V

    sput-object v0, Lc/d/a/f$b;->a:Lc/d/a/f;

    return-void
.end method

.method static synthetic a()Lc/d/a/f;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/f$b;->a:Lc/d/a/f;

    return-object v0
.end method
