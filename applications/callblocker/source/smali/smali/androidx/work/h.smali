.class public final Landroidx/work/h;
.super Ljava/lang/Object;
.source "ForegroundInfo.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/app/Notification;


# direct methods
.method public constructor <init>(ILandroid/app/Notification;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroidx/work/h;->a:I

    .line 64
    iput-object p2, p0, Landroidx/work/h;->c:Landroid/app/Notification;

    .line 65
    iput p3, p0, Landroidx/work/h;->b:I

    .line 66
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Landroidx/work/h;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroidx/work/h;->b:I

    return v0
.end method

.method public c()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroidx/work/h;->c:Landroid/app/Notification;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 95
    check-cast p1, Landroidx/work/h;

    .line 97
    iget v1, p0, Landroidx/work/h;->a:I

    iget v2, p1, Landroidx/work/h;->a:I

    if-ne v1, v2, :cond_0

    .line 98
    iget v1, p0, Landroidx/work/h;->b:I

    iget v2, p1, Landroidx/work/h;->b:I

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v0, p0, Landroidx/work/h;->c:Landroid/app/Notification;

    iget-object v1, p1, Landroidx/work/h;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Landroidx/work/h;->a:I

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/h;->b:I

    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/h;->c:Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ForegroundInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "mNotificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/work/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, ", mForegroundServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/work/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, ", mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/h;->c:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
