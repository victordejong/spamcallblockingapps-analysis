.class public Ld2/f1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$e;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ld2/f1$e$a;

    invoke-direct {v1, p0, v0, p1}, Ld2/f1$e$a;-><init>(Ld2/f1$e;Landroid/content/Context;Ld2/t0;)V

    invoke-static {v1}, Ld2/i3;->j(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Executing ADCController.configure queryAdvertisingId failed"

    .line 3
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v1, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
