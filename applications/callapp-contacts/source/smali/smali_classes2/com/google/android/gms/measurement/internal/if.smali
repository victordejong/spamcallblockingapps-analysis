.class final Lcom/google/android/gms/measurement/internal/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ij;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/if;->b:Lcom/google/android/gms/measurement/internal/ij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/if;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/if;->b:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/if;->a:Landroid/content/ComponentName;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Lcom/google/android/gms/measurement/internal/ik;Landroid/content/ComponentName;)V

    return-void
.end method
