.class public final Landroidx/core/app/g$c;
.super Landroidx/core/app/g$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2198
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/g$e;)V
    .locals 0

    .line 2201
    invoke-direct {p0}, Landroidx/core/app/g$i;-><init>()V

    .line 2202
    invoke-virtual {p0, p1}, Landroidx/core/app/g$c;->a(Landroidx/core/app/g$e;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroidx/core/app/g$c;
    .locals 0

    .line 2228
    invoke-static {p1}, Landroidx/core/app/g$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$c;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Landroidx/core/app/f;)V
    .locals 2

    .line 2238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2239
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2240
    invoke-interface {p1}, Landroidx/core/app/f;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/g$c;->e:Ljava/lang/CharSequence;

    .line 2241
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/g$c;->a:Ljava/lang/CharSequence;

    .line 2242
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2243
    iget-boolean v0, p0, Landroidx/core/app/g$c;->g:Z

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Landroidx/core/app/g$c;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method
