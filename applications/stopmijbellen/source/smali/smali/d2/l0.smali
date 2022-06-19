.class public Ld2/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ld2/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->n()Ld2/e2;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ld2/e2;->b:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Ld2/e2;->b:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
