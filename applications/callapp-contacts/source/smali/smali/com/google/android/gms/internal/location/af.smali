.class final Lcom/google/android/gms/internal/location/af;
.super Lcom/google/android/gms/internal/location/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/location/ae<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/location/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/location/ae<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient b:[Ljava/lang/Object;

.field private final transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/location/af;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/location/af;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/location/af;->a:Lcom/google/android/gms/internal/location/ae;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/location/ae;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/af;->b:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/location/af;->c:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/location/af;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/location/af;->c:I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/location/af;->c:I

    return p1
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/af;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/af;->c:I

    return v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/location/af;->c:I

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/location/y;->a(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/location/af;->b:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/af;->c:I

    return v0
.end method
