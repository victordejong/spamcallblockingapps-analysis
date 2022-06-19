.class public final Lcom/google/android/gms/common/stats/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/stats/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/c;->a:Lcom/google/android/gms/common/stats/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/stats/c;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/stats/c;->a:Lcom/google/android/gms/common/stats/c;

    return-object v0
.end method
