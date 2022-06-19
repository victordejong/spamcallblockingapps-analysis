.class final Lcom/google/android/gms/internal/location/ac;
.super Lcom/google/android/gms/internal/location/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/location/aa<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/location/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/location/ae<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/ae;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/location/ae<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/ae;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/location/aa;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/ac;->a:Lcom/google/android/gms/internal/location/ae;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/ac;->a:Lcom/google/android/gms/internal/location/ae;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/location/ae;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
