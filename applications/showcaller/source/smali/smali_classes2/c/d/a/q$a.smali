.class final Lc/d/a/q$a;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lc/d/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/q;

    invoke-direct {v0}, Lc/d/a/q;-><init>()V

    sput-object v0, Lc/d/a/q$a;->a:Lc/d/a/q;

    return-void
.end method

.method static synthetic a()Lc/d/a/q;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/q$a;->a:Lc/d/a/q;

    return-object v0
.end method
