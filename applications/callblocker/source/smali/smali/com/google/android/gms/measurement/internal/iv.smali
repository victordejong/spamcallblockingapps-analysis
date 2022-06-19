.class final synthetic Lcom/google/android/gms/measurement/internal/iv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/is;

.field private final b:I

.field private final c:Lcom/google/android/gms/measurement/internal/dy;

.field private final d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/is;ILcom/google/android/gms/measurement/internal/dy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/is;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/iv;->b:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/iv;->c:Lcom/google/android/gms/measurement/internal/dy;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/iv;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/is;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/iv;->b:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/iv;->c:Lcom/google/android/gms/measurement/internal/dy;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/iv;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/is;->a(ILcom/google/android/gms/measurement/internal/dy;Landroid/content/Intent;)V

    return-void
.end method
