.class public Landroidx/core/app/h$b;
.super Landroidx/core/app/h$d;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2081
    invoke-direct {p0}, Landroidx/core/app/h$d;-><init>()V

    .line 2082
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;
    .locals 1

    .prologue
    .line 2111
    invoke-static {p1}, Landroidx/core/app/h$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/h$b;->e:Ljava/lang/CharSequence;

    .line 2112
    return-object p0
.end method

.method public a(Landroidx/core/app/g;)V
    .locals 2

    .prologue
    .line 2121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2122
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2123
    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Landroidx/core/app/h$b;->b:Ljava/lang/CharSequence;

    .line 2124
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/h$b;->e:Ljava/lang/CharSequence;

    .line 2125
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 2126
    iget-boolean v1, p0, Landroidx/core/app/h$b;->d:Z

    if-eqz v1, :cond_0

    .line 2127
    iget-object v1, p0, Landroidx/core/app/h$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2130
    :cond_0
    return-void
.end method
