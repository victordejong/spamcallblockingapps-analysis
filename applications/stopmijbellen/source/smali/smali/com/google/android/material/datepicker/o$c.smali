.class public Lcom/google/android/material/datepicker/o$c;
.super Lcom/google/android/material/datepicker/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/o;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/w<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/o$c;->a:Lcom/google/android/material/datepicker/o;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/o$c;->a:Lcom/google/android/material/datepicker/o;

    sget v0, Lcom/google/android/material/datepicker/o;->r:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/o;->g()V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/o$c;->a:Lcom/google/android/material/datepicker/o;

    .line 4
    iget-object v0, p1, Lcom/google/android/material/datepicker/o;->q:Landroid/widget/Button;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/o;->a()Lcom/google/android/material/datepicker/d;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/material/datepicker/d;->s()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
