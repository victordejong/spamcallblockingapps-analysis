.class final Landroidx/media2/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/e$f;,
        Landroidx/media2/widget/e$g;,
        Landroidx/media2/widget/e$e;,
        Landroidx/media2/widget/e$d;,
        Landroidx/media2/widget/e$c;,
        Landroidx/media2/widget/e$b;,
        Landroidx/media2/widget/e$a;,
        Landroidx/media2/widget/e$h;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field private c:Landroidx/media2/widget/e$h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 100
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "\u266b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroidx/media2/widget/e;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/e$h;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    .line 105
    new-instance v0, Landroidx/media2/widget/e$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/e$1;-><init>(Landroidx/media2/widget/e;)V

    iput-object v0, p0, Landroidx/media2/widget/e;->c:Landroidx/media2/widget/e$h;

    if-eqz p1, :cond_0

    .line 149
    iput-object p1, p0, Landroidx/media2/widget/e;->c:Landroidx/media2/widget/e$h;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I[BI)I
    .locals 2

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    .line 230
    :try_start_0
    aget-byte p1, p2, p3

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, 0x1

    aget-byte p2, p2, v0

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/String;

    add-int/lit8 v0, p3, 0x2

    .line 234
    invoke-static {p2, p3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    const-string v0, "EUC-KR"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 235
    iget-object p2, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Cea708CCParser"

    const-string v0, "P16 Code - Could not find supported encoding"

    .line 238
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_2
    const/16 p2, 0x10

    if-lt p1, p2, :cond_3

    const/16 p2, 0x17

    if-gt p1, p2, :cond_3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/16 p2, 0x8

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 260
    :pswitch_0
    iget-object p1, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 256
    :cond_4
    :pswitch_1
    new-instance p2, Landroidx/media2/widget/e$b;

    int-to-char p1, p1

    .line 257
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p2, v0, p1}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    .line 256
    invoke-virtual {p0, p2}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    :goto_1
    return p3

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a()V
    .locals 4

    .line 164
    iget-object v0, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Landroidx/media2/widget/e;->c:Landroidx/media2/widget/e$h;

    new-instance v1, Landroidx/media2/widget/e$b;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/media2/widget/e$h;->a(Landroidx/media2/widget/e$b;)V

    .line 166
    iget-object v0, p0, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method final a(Landroidx/media2/widget/e$b;)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroidx/media2/widget/e;->a()V

    .line 160
    iget-object v0, p0, Landroidx/media2/widget/e;->c:Landroidx/media2/widget/e$h;

    invoke-interface {v0, p1}, Landroidx/media2/widget/e$h;->a(Landroidx/media2/widget/e$b;)V

    return-void
.end method
