.class public Lc/d/a/i0/e$b;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/i0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:Lc/d/a/i0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/i0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/i0/e;-><init>(Lc/d/a/i0/e$a;)V

    sput-object v0, Lc/d/a/i0/e$b;->a:Lc/d/a/i0/e;

    return-void
.end method

.method static synthetic a()Lc/d/a/i0/e;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/i0/e$b;->a:Lc/d/a/i0/e;

    return-object v0
.end method
