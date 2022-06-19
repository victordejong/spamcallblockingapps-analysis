.class final Lc/d/a/h$b;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lc/d/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/h;-><init>(Lc/d/a/h$a;)V

    sput-object v0, Lc/d/a/h$b;->a:Lc/d/a/h;

    return-void
.end method

.method static synthetic a()Lc/d/a/h;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/h$b;->a:Lc/d/a/h;

    return-object v0
.end method
