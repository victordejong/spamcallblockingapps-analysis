.class public final Lcom/google/android/gms/measurement/internal/kb;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/measurement/internal/kb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:J

.field public final n:I

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/Boolean;

.field public final t:J

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/gms/measurement/internal/kd;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/kd;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/kb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/kb;->j:J

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    .line 8
    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/kb;->e:J

    .line 9
    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/kb;->f:J

    .line 10
    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    .line 11
    iput-boolean p12, p0, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    .line 12
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->i:Z

    .line 13
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    .line 14
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kb;->l:J

    .line 15
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kb;->m:J

    .line 16
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/measurement/internal/kb;->n:I

    .line 17
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    .line 18
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    .line 19
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->q:Z

    .line 20
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    .line 21
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    .line 22
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kb;->t:J

    .line 23
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->u:Ljava/util/List;

    .line 24
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "JJIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    .line 30
    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/kb;->j:J

    .line 31
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    .line 32
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/kb;->e:J

    .line 33
    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/kb;->f:J

    .line 34
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    .line 35
    iput-boolean p10, p0, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    .line 36
    iput-boolean p11, p0, Lcom/google/android/gms/measurement/internal/kb;->i:Z

    .line 37
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    .line 38
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kb;->l:J

    .line 39
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kb;->m:J

    .line 40
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/measurement/internal/kb;->n:I

    .line 41
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    .line 42
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    .line 43
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kb;->q:Z

    .line 44
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    .line 46
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kb;->t:J

    .line 47
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->u:Ljava/util/List;

    .line 48
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 52
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 54
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 55
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 56
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kb;->e:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 57
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kb;->f:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 58
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 59
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 60
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/kb;->i:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 61
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kb;->j:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 62
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kb;->l:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 64
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kb;->m:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 65
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/measurement/internal/kb;->n:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 66
    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 67
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 68
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/kb;->q:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 69
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 71
    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/kb;->t:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 72
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->u:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 73
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 74
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 75
    return-void
.end method
