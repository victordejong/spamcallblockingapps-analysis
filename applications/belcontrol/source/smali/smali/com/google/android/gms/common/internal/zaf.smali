.class public final Lcom/google/android/gms/common/internal/zaf;
.super Lcom/google/android/gms/common/internal/zad;
.source ""


# instance fields
.field private final synthetic zaa:Landroid/content/Intent;

.field private final synthetic zab:Landroidx/fragment/app/Fragment;

.field private final synthetic zac:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zaf;->zaa:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zaf;->zab:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zaf;->zac:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zad;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zaf;->zaa:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zaf;->zab:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/zaf;->zac:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
