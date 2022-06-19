.class final synthetic Lcom/google/android/gms/measurement/internal/m8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/q8;

.field private final c:I

.field private final d:Lcom/google/android/gms/measurement/internal/o3;

.field private final e:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/q8;ILcom/google/android/gms/measurement/internal/o3;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m8;->b:Lcom/google/android/gms/measurement/internal/q8;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/m8;->c:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o3;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/m8;->e:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m8;->b:Lcom/google/android/gms/measurement/internal/q8;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/m8;->c:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o3;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/m8;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/q8;->j(ILcom/google/android/gms/measurement/internal/o3;Landroid/content/Intent;)V

    return-void
.end method
