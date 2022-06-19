.class public final Lcom/google/android/gms/measurement/internal/hp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/hp;->c:J

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/hp;->d:Z

    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/hp;->e:Z

    .line 9
    return-void
.end method
