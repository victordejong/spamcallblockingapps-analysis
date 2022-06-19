.class public Li4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:Landroid/app/PendingIntent;

.field public final f:Landroid/app/PendingIntent;

.field public final g:Landroid/app/PendingIntent;

.field public final h:Landroid/app/PendingIntent;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Li4/a;->i:Z

    move v1, p3

    iput v1, v0, Li4/a;->a:I

    move v1, p4

    iput v1, v0, Li4/a;->b:I

    move-wide v1, p11

    iput-wide v1, v0, Li4/a;->c:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Li4/a;->d:J

    move-object/from16 v1, p15

    iput-object v1, v0, Li4/a;->e:Landroid/app/PendingIntent;

    move-object/from16 v1, p16

    iput-object v1, v0, Li4/a;->f:Landroid/app/PendingIntent;

    move-object/from16 v1, p17

    iput-object v1, v0, Li4/a;->g:Landroid/app/PendingIntent;

    move-object/from16 v1, p18

    iput-object v1, v0, Li4/a;->h:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final a(Li4/c;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    invoke-virtual {p1}, Li4/c;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Li4/a;->f:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Li4/a;->b(Li4/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Li4/a;->h:Landroid/app/PendingIntent;

    return-object p1

    :cond_1
    return-object v1

    .line 3
    :cond_2
    invoke-virtual {p1}, Li4/c;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Li4/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Li4/a;->b(Li4/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Li4/a;->g:Landroid/app/PendingIntent;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final b(Li4/c;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Li4/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Li4/a;->c:J

    iget-wide v2, p0, Li4/a;->d:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
