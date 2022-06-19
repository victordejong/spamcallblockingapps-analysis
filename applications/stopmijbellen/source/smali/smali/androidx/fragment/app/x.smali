.class public abstract Landroidx/fragment/app/x;
.super Landroidx/fragment/app/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/t;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/a0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    .line 3
    new-instance v1, Landroidx/fragment/app/b0;

    invoke-direct {v1}, Landroidx/fragment/app/b0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/x;->a:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Li4/d;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/x;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract f()Landroid/view/LayoutInflater;
.end method

.method public abstract g(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract h(Ljava/lang/String;)Z
.end method

.method public abstract j()V
.end method
