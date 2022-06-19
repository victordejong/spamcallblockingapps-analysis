.class public final Lcom/google/android/gms/common/internal/am;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/am;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/am;->a:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/am;->d:Z

    .line 5
    const/16 v0, 0x81

    iput v0, p0, Lcom/google/android/gms/common/internal/am;->c:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/am;->e:Z

    .line 7
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/am;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/am;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/common/internal/am;->c:I

    return v0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/am;->e:Z

    return v0
.end method
