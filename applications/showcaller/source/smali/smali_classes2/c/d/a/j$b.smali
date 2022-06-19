.class final Lc/d/a/j$b;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lc/d/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/j;-><init>(Lc/d/a/j$a;)V

    sput-object v0, Lc/d/a/j$b;->a:Lc/d/a/j;

    return-void
.end method

.method static synthetic a()Lc/d/a/j;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/j$b;->a:Lc/d/a/j;

    return-object v0
.end method
