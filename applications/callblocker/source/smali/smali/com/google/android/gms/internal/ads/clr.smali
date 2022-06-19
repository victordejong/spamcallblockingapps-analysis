.class final synthetic Lcom/google/android/gms/internal/ads/clr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/akn$a$a;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/akn$a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clr;->a:Lcom/google/android/gms/internal/ads/akn$a$a;

    iput p2, p0, Lcom/google/android/gms/internal/ads/clr;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clr;->a:Lcom/google/android/gms/internal/ads/akn$a$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/clr;->b:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/clq;->a(Lcom/google/android/gms/internal/ads/akn$a$a;ILcom/google/android/gms/tasks/g;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
