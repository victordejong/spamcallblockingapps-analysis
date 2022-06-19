.class final Lc/d/a/j$a;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/j;->f(Lc/d/a/t;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Lc/d/a/t;


# direct methods
.method constructor <init>(Lc/d/a/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/j$a;->d:Lc/d/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/j$a;->d:Lc/d/a/t;

    invoke-interface {v0}, Lc/d/a/t;->m()V

    return-void
.end method
