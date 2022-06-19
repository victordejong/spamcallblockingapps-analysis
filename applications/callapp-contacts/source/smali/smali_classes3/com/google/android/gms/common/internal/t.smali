.class public final Lcom/google/android/gms/common/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/t$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/internal/t;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2000
    new-instance v0, Lcom/google/android/gms/common/internal/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/t$a;-><init>(Lcom/google/android/gms/common/internal/w;)V

    new-instance v2, Lcom/google/android/gms/common/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/t$a;->a:Ljava/lang/String;

    .line 2001
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/internal/t;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/internal/w;)V

    sput-object v2, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/t;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/internal/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/common/internal/t;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/t;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/t;->b:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/internal/t;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/t;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1001
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
