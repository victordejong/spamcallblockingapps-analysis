.class final synthetic Lcom/google/android/gms/internal/ads/cuz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aut$a$b;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aut$a$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cuz;->a:Lcom/google/android/gms/internal/ads/aut$a$b;

    iput p2, p0, Lcom/google/android/gms/internal/ads/cuz;->b:I

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cuz;->a:Lcom/google/android/gms/internal/ads/aut$a$b;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cuz;->b:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cuy;->a(Lcom/google/android/gms/internal/ads/aut$a$b;ILcom/google/android/gms/tasks/h;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
