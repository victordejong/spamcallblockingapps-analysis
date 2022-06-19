.class final Landroidx/media/AudioAttributesImplBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/AudioAttributesImpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    .line 185
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    .line 186
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    const/4 v0, -0x1

    .line 187
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    return-void
.end method

.method constructor <init>(Landroidx/media/AudioAttributesCompat;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    .line 185
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    .line 186
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    const/4 v0, -0x1

    .line 187
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    .line 193
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->d()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    .line 194
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->c()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    .line 195
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->e()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    .line 1561
    iget-object p1, p1, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/AudioAttributesImpl;

    invoke-interface {p1}, Landroidx/media/AudioAttributesImpl;->d()I

    move-result p1

    .line 196
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Landroidx/media/AudioAttributesImpl$a;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 5232
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xc

    .line 5229
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    goto :goto_0

    .line 5225
    :pswitch_1
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Landroidx/media/AudioAttributesImpl;
    .locals 5

    .line 202
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    iget v3, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    iget v4, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v0
.end method

.method public final bridge synthetic b(I)Landroidx/media/AudioAttributesImpl$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4249
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_0

    .line 4246
    :cond_0
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic c(I)Landroidx/media/AudioAttributesImpl$a;
    .locals 1

    and-int/lit16 p1, p1, 0x3ff

    .line 3258
    iget v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    return-object p0
.end method

.method public final synthetic d(I)Landroidx/media/AudioAttributesImpl$a;
    .locals 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 2270
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid stream type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for AudioAttributesCompat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributesCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2308
    :pswitch_0
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2305
    :pswitch_1
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2302
    :pswitch_2
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2280
    :pswitch_3
    iget v2, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    goto :goto_0

    .line 2298
    :pswitch_4
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    .line 2299
    iget v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    goto :goto_1

    .line 2295
    :pswitch_5
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2292
    :pswitch_6
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x2

    .line 2289
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2286
    :pswitch_8
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2283
    :goto_0
    :pswitch_9
    iput v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    goto :goto_1

    .line 2277
    :pswitch_a
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    .line 2313
    :goto_1
    invoke-static {p1}, Landroidx/media/AudioAttributesImplBase;->a(I)I

    move-result p1

    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    return-object p0

    .line 2266
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
