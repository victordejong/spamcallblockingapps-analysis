.class public final Lcom/hbb20/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hbb20/a;",
        ">;"
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = "787"

.field private static B:Ljava/lang/String; = "721"

.field private static C:Ljava/lang/String; = "649"

.field private static D:Ljava/lang/String; = "868"

.field private static E:Ljava/lang/String; = "784"

.field private static F:Ljava/lang/String; = "284"

.field private static G:Ljava/lang/String; = "340"

.field private static H:Ljava/lang/String; = "1624"

.field static a:I = -0x63

.field static b:Ljava/lang/String; = "Class Country"

.field static c:Lcom/hbb20/CountryCodePicker$e; = null

.field static d:Ljava/lang/String; = null

.field static e:Ljava/lang/String; = null

.field static f:Ljava/lang/String; = null

.field static g:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/String; = "268"

.field private static n:Ljava/lang/String; = "264"

.field private static o:Ljava/lang/String; = "246"

.field private static p:Ljava/lang/String; = "441"

.field private static q:Ljava/lang/String; = "242"

.field private static r:Ljava/lang/String; = "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/"

.field private static s:Ljava/lang/String; = "767"

.field private static t:Ljava/lang/String; = "809/829/849"

.field private static u:Ljava/lang/String; = "473"

.field private static v:Ljava/lang/String; = "876"

.field private static w:Ljava/lang/String; = "869"

.field private static x:Ljava/lang/String; = "345"

.field private static y:Ljava/lang/String; = "758"

.field private static z:Ljava/lang/String; = "664"


# instance fields
.field h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lcom/hbb20/a;->a:I

    iput v0, p0, Lcom/hbb20/a;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lcom/hbb20/a;->a:I

    iput v0, p0, Lcom/hbb20/a;->l:I

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/hbb20/a;->j:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/hbb20/a;->l:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;
    .locals 1

    .line 278
    invoke-static {p0, p1}, Lcom/hbb20/a;->d(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/util/List;

    move-result-object p0

    .line 279
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/a;

    .line 8681
    iget-object v0, p1, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 280
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$e;",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;I)",
            "Lcom/hbb20/a;"
        }
    .end annotation

    .line 316
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/hbb20/a;->b(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$e;",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/a;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 341
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 348
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_5

    .line 349
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 352
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/hbb20/b;->a(I)Lcom/hbb20/b;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_3

    .line 356
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    .line 358
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    iget v0, v4, Lcom/hbb20/b;->b:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_2

    .line 359
    iget p2, v4, Lcom/hbb20/b;->b:I

    add-int/2addr p2, v1

    invoke-virtual {p3, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 360
    invoke-virtual {v4, p0, p1, p2}, Lcom/hbb20/b;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p0

    return-object p0

    .line 362
    :cond_2
    iget-object p2, v4, Lcom/hbb20/b;->a:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p0

    return-object p0

    .line 365
    :cond_3
    invoke-static {p0, p1, p2, v3}, Lcom/hbb20/a;->b(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;",
            "Lcom/hbb20/CountryCodePicker$e;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/a;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/a;

    .line 7681
    iget-object p2, p1, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 260
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 257
    :cond_3
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Lcom/hbb20/a;
    .locals 3

    .line 228
    invoke-static {}, Lcom/hbb20/a;->c()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/a;

    .line 6689
    iget-object v2, v1, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/hbb20/a;->c:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/a;->e(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)V

    .line 158
    :cond_1
    sget-object p0, Lcom/hbb20/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static a(Lcom/hbb20/a;)Ljava/lang/String;
    .locals 2

    .line 899
    invoke-direct {p0}, Lcom/hbb20/a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "zw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "zm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xf8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "za"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf7

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "yt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xf6

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xf5

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "xk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf4

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "ws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xf3

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "wf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xf2

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "vu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xf1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "vn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf0

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "vi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xef

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "vg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xee

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "ve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xed

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "vc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xec

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "va"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xeb

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "uz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xea

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "uy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xe9

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xe8

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "um"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xe7

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xe6

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xe5

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xe4

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xe3

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xe2

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xe1

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xe0

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xdf

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "tn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xde

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xdd

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "tl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0xdc

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "tk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xdb

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "tj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xda

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0xd9

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "tg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0xd8

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "tf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xd7

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0xd6

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "tc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0xd5

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "sz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0xd4

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0xd3

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "sx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0xd2

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "sv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0xd1

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "st"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0xd0

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "ss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0xcf

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "sr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0xce

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0xcd

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "sn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0xcc

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "sm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0xcb

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "sl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0xca

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "sk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0xc9

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "sj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0xc8

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "si"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0xc7

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0xc6

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0xc5

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "se"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0xc4

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0xc3

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "sc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0xc2

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "sb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0xc1

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "sa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0xc0

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "rw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0xbf

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0xbe

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0xbd

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "ro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0xbc

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "re"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0xbb

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "qa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0xba

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "py"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v1, 0xb9

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v1, 0xb8

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v1, 0xb7

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v1, 0xb6

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "pr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v1, 0xb5

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "pn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0xb4

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "pm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v1, 0xb3

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v1, 0xb2

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v1, 0xb1

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "ph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v1, 0xb0

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "pg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v1, 0xaf

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "pf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v1, 0xae

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "pe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v1, 0xad

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "pa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v1, 0xac

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "om"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v1, 0xab

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "nz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v1, 0xaa

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "nu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v1, 0xa9

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "nr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v1, 0xa8

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "np"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v1, 0xa7

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v1, 0xa6

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v1, 0xa5

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "ni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v1, 0xa4

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "ng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v1, 0xa3

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "nf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v1, 0xa2

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "ne"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v1, 0xa1

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v1, 0xa0

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "na"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v1, 0x9f

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "mz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v1, 0x9e

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "my"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v1, 0x9d

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "mx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v1, 0x9c

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "mw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v1, 0x9b

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "mv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v1, 0x9a

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "mu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v1, 0x99

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "mt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v1, 0x98

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v1, 0x97

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "mr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v1, 0x96

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "mq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v1, 0x95

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "mp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v1, 0x94

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "mo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v1, 0x93

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "mn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v1, 0x92

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v1, 0x91

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "ml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v1, 0x90

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "mk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v1, 0x8f

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "mh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v1, 0x8e

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "mg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v1, 0x8d

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "mf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v1, 0x8c

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v1, 0x8b

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v1, 0x8a

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "mc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v1, 0x89

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "ma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v1, 0x88

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "ly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v1, 0x87

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "lv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v1, 0x86

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "lu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v1, 0x85

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v1, 0x84

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "ls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v1, 0x83

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v1, 0x82

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "lk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v1, 0x81

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v1, 0x80

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "lc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v1, 0x7f

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "lb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v1, 0x7e

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "la"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v1, 0x7d

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "kz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v1, 0x7c

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "ky"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v1, 0x7b

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "kw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v1, 0x7a

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v1, 0x79

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "kp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v1, 0x78

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "kn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v1, 0x77

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "km"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v1, 0x76

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "ki"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v1, 0x75

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "kh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v1, 0x74

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v1, 0x73

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "ke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v1, 0x72

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v1, 0x71

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "jo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v1, 0x70

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "jm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v1, 0x6f

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "je"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v1, 0x6e

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v1, 0x6d

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v1, 0x6c

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "ir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v1, 0x6b

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "iq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v1, 0x6a

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v1, 0x69

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v1, 0x68

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v1, 0x67

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "il"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v1, 0x66

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "ie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v1, 0x65

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v1, 0x64

    goto/16 :goto_0

    :sswitch_96
    const-string v0, "hu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v1, 0x63

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "ht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v1, 0x62

    goto/16 :goto_0

    :sswitch_98
    const-string v0, "hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v1, 0x61

    goto/16 :goto_0

    :sswitch_99
    const-string v0, "hn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v1, 0x60

    goto/16 :goto_0

    :sswitch_9a
    const-string v0, "hm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v1, 0x5f

    goto/16 :goto_0

    :sswitch_9b
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v1, 0x5e

    goto/16 :goto_0

    :sswitch_9c
    const-string v0, "gy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v1, 0x5d

    goto/16 :goto_0

    :sswitch_9d
    const-string v0, "gw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_9e
    const-string v0, "gu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v1, 0x5b

    goto/16 :goto_0

    :sswitch_9f
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v1, 0x5a

    goto/16 :goto_0

    :sswitch_a0
    const-string v0, "gs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v1, 0x59

    goto/16 :goto_0

    :sswitch_a1
    const-string v0, "gr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v1, 0x58

    goto/16 :goto_0

    :sswitch_a2
    const-string v0, "gq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v1, 0x57

    goto/16 :goto_0

    :sswitch_a3
    const-string v0, "gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v1, 0x56

    goto/16 :goto_0

    :sswitch_a4
    const-string v0, "gn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_a5
    const-string v0, "gm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_a6
    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v1, 0x53

    goto/16 :goto_0

    :sswitch_a7
    const-string v0, "gi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    goto/16 :goto_0

    :cond_a7
    const/16 v1, 0x52

    goto/16 :goto_0

    :sswitch_a8
    const-string v0, "gh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    goto/16 :goto_0

    :cond_a8
    const/16 v1, 0x51

    goto/16 :goto_0

    :sswitch_a9
    const-string v0, "gg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    goto/16 :goto_0

    :cond_a9
    const/16 v1, 0x50

    goto/16 :goto_0

    :sswitch_aa
    const-string v0, "gf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_0

    :cond_aa
    const/16 v1, 0x4f

    goto/16 :goto_0

    :sswitch_ab
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab

    goto/16 :goto_0

    :cond_ab
    const/16 v1, 0x4e

    goto/16 :goto_0

    :sswitch_ac
    const-string v0, "gd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto/16 :goto_0

    :cond_ac
    const/16 v1, 0x4d

    goto/16 :goto_0

    :sswitch_ad
    const-string v0, "gb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad

    goto/16 :goto_0

    :cond_ad
    const/16 v1, 0x4c

    goto/16 :goto_0

    :sswitch_ae
    const-string v0, "ga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ae

    goto/16 :goto_0

    :cond_ae
    const/16 v1, 0x4b

    goto/16 :goto_0

    :sswitch_af
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af

    goto/16 :goto_0

    :cond_af
    const/16 v1, 0x4a

    goto/16 :goto_0

    :sswitch_b0
    const-string v0, "fo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b0

    goto/16 :goto_0

    :cond_b0
    const/16 v1, 0x49

    goto/16 :goto_0

    :sswitch_b1
    const-string v0, "fm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b1

    goto/16 :goto_0

    :cond_b1
    const/16 v1, 0x48

    goto/16 :goto_0

    :sswitch_b2
    const-string v0, "fk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_0

    :cond_b2
    const/16 v1, 0x47

    goto/16 :goto_0

    :sswitch_b3
    const-string v0, "fj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_0

    :cond_b3
    const/16 v1, 0x46

    goto/16 :goto_0

    :sswitch_b4
    const-string v0, "fi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4

    goto/16 :goto_0

    :cond_b4
    const/16 v1, 0x45

    goto/16 :goto_0

    :sswitch_b5
    const-string v0, "et"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5

    goto/16 :goto_0

    :cond_b5
    const/16 v1, 0x44

    goto/16 :goto_0

    :sswitch_b6
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    goto/16 :goto_0

    :cond_b6
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_b7
    const-string v0, "er"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto/16 :goto_0

    :cond_b7
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_b8
    const-string v0, "eh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_0

    :cond_b8
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_b9
    const-string v0, "eg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b9

    goto/16 :goto_0

    :cond_b9
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_ba
    const-string v0, "ee"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    goto/16 :goto_0

    :cond_ba
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_bb
    const-string v0, "ec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bb

    goto/16 :goto_0

    :cond_bb
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_bc
    const-string v0, "dz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bc

    goto/16 :goto_0

    :cond_bc
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_bd
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto/16 :goto_0

    :cond_bd
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_be
    const-string v0, "dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be

    goto/16 :goto_0

    :cond_be
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_bf
    const-string v0, "dk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bf

    goto/16 :goto_0

    :cond_bf
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_c0
    const-string v0, "dj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0

    goto/16 :goto_0

    :cond_c0
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_c1
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_0

    :cond_c1
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_c2
    const-string v0, "cz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_0

    :cond_c2
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_c3
    const-string v0, "cy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c3

    goto/16 :goto_0

    :cond_c3
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_c4
    const-string v0, "cx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    goto/16 :goto_0

    :cond_c4
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_c5
    const-string v0, "cw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto/16 :goto_0

    :cond_c5
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_c6
    const-string v0, "cv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_0

    :cond_c6
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_c7
    const-string v0, "cu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    goto/16 :goto_0

    :cond_c7
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_c8
    const-string v0, "cr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    goto/16 :goto_0

    :cond_c8
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_c9
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c9

    goto/16 :goto_0

    :cond_c9
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_ca
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ca

    goto/16 :goto_0

    :cond_ca
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_cb
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb

    goto/16 :goto_0

    :cond_cb
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_cc
    const-string v0, "cl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cc

    goto/16 :goto_0

    :cond_cc
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_cd
    const-string v0, "ck"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cd

    goto/16 :goto_0

    :cond_cd
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_ce
    const-string v0, "ci"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ce

    goto/16 :goto_0

    :cond_ce
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_cf
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_0

    :cond_cf
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_d0
    const-string v0, "cg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_0

    :cond_d0
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_d1
    const-string v0, "cf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    goto/16 :goto_0

    :cond_d1
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_d2
    const-string v0, "cd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto/16 :goto_0

    :cond_d2
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_d3
    const-string v0, "cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d3

    goto/16 :goto_0

    :cond_d3
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_d4
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_0

    :cond_d4
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_d5
    const-string v0, "bz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d5

    goto/16 :goto_0

    :cond_d5
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_d6
    const-string v0, "by"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto/16 :goto_0

    :cond_d6
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_d7
    const-string v0, "bw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d7

    goto/16 :goto_0

    :cond_d7
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_d8
    const-string v0, "bv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d8

    goto/16 :goto_0

    :cond_d8
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_d9
    const-string v0, "bt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    goto/16 :goto_0

    :cond_d9
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_da
    const-string v0, "bs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_da

    goto/16 :goto_0

    :cond_da
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_db
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_db

    goto/16 :goto_0

    :cond_db
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_dc
    const-string v0, "bq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    goto/16 :goto_0

    :cond_dc
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_dd
    const-string v0, "bo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_0

    :cond_dd
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_de
    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_0

    :cond_de
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_df
    const-string v0, "bm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_df

    goto/16 :goto_0

    :cond_df
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_e0
    const-string v0, "bl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_0

    :cond_e0
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_e1
    const-string v0, "bj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e1

    goto/16 :goto_0

    :cond_e1
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_e2
    const-string v0, "bi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_0

    :cond_e2
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_e3
    const-string v0, "bh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e3

    goto/16 :goto_0

    :cond_e3
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_e4
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e4

    goto/16 :goto_0

    :cond_e4
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_e5
    const-string v0, "bf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e5

    goto/16 :goto_0

    :cond_e5
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_e6
    const-string v0, "be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e6

    goto/16 :goto_0

    :cond_e6
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_e7
    const-string v0, "bd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_0

    :cond_e7
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_e8
    const-string v0, "bb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e8

    goto/16 :goto_0

    :cond_e8
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_e9
    const-string v0, "ba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e9

    goto/16 :goto_0

    :cond_e9
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_ea
    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ea

    goto/16 :goto_0

    :cond_ea
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_eb
    const-string v0, "ax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_0

    :cond_eb
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_ec
    const-string v0, "aw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto/16 :goto_0

    :cond_ec
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_ed
    const-string v0, "au"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ed

    goto/16 :goto_0

    :cond_ed
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_ee
    const-string v0, "at"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto/16 :goto_0

    :cond_ee
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_ef
    const-string v0, "as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ef

    goto/16 :goto_0

    :cond_ef
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_f0
    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto/16 :goto_0

    :cond_f0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_f1
    const-string v0, "aq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f1

    goto/16 :goto_0

    :cond_f1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_f2
    const-string v0, "ao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f2

    goto :goto_0

    :cond_f2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_f3
    const-string v0, "am"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f3

    goto :goto_0

    :cond_f3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f4
    const-string v0, "al"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f4

    goto :goto_0

    :cond_f4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_f5
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f5

    goto :goto_0

    :cond_f5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_f6
    const-string v0, "ag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f6

    goto :goto_0

    :cond_f6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_f7
    const-string v0, "af"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f7

    goto :goto_0

    :cond_f7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_f8
    const-string v0, "ae"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f8

    goto :goto_0

    :cond_f8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f9
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto :goto_0

    :cond_f9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const-string p0, "\ud83c\uddff\ud83c\uddfc"

    return-object p0

    :pswitch_1
    const-string p0, "\ud83c\uddff\ud83c\uddf2"

    return-object p0

    :pswitch_2
    const-string p0, "\ud83c\uddff\ud83c\udde6"

    return-object p0

    :pswitch_3
    const-string p0, "\ud83c\uddfe\ud83c\uddf9"

    return-object p0

    :pswitch_4
    const-string p0, "\ud83c\uddfe\ud83c\uddea"

    return-object p0

    :pswitch_5
    const-string p0, "\ud83c\uddfd\ud83c\uddf0"

    return-object p0

    :pswitch_6
    const-string p0, "\ud83c\uddfc\ud83c\uddf8"

    return-object p0

    :pswitch_7
    const-string p0, "\ud83c\uddfc\ud83c\uddeb"

    return-object p0

    :pswitch_8
    const-string p0, "\ud83c\uddfb\ud83c\uddfa"

    return-object p0

    :pswitch_9
    const-string p0, "\ud83c\uddfb\ud83c\uddf3"

    return-object p0

    :pswitch_a
    const-string p0, "\ud83c\uddfb\ud83c\uddee"

    return-object p0

    :pswitch_b
    const-string p0, "\ud83c\uddfb\ud83c\uddec"

    return-object p0

    :pswitch_c
    const-string p0, "\ud83c\uddfb\ud83c\uddea"

    return-object p0

    :pswitch_d
    const-string p0, "\ud83c\uddfb\ud83c\udde8"

    return-object p0

    :pswitch_e
    const-string p0, "\ud83c\uddfb\ud83c\udde6"

    return-object p0

    :pswitch_f
    const-string p0, "\ud83c\uddfa\ud83c\uddff"

    return-object p0

    :pswitch_10
    const-string p0, "\ud83c\uddfa\ud83c\uddfe"

    return-object p0

    :pswitch_11
    const-string p0, "\ud83c\uddfa\ud83c\uddf8"

    return-object p0

    :pswitch_12
    const-string p0, "\ud83c\uddfa\ud83c\uddf2"

    return-object p0

    :pswitch_13
    const-string p0, "\ud83c\uddfa\ud83c\uddec"

    return-object p0

    :pswitch_14
    const-string p0, "\ud83c\uddfa\ud83c\udde6"

    return-object p0

    :pswitch_15
    const-string p0, "\ud83c\uddf9\ud83c\uddff"

    return-object p0

    :pswitch_16
    const-string p0, "\ud83c\uddf9\ud83c\uddfc"

    return-object p0

    :pswitch_17
    const-string p0, "\ud83c\uddf9\ud83c\uddfb"

    return-object p0

    :pswitch_18
    const-string p0, "\ud83c\uddf9\ud83c\uddf9"

    return-object p0

    :pswitch_19
    const-string p0, "\ud83c\uddf9\ud83c\uddf7"

    return-object p0

    :pswitch_1a
    const-string p0, "\ud83c\uddf9\ud83c\uddf4"

    return-object p0

    :pswitch_1b
    const-string p0, "\ud83c\uddf9\ud83c\uddf3"

    return-object p0

    :pswitch_1c
    const-string p0, "\ud83c\uddf9\ud83c\uddf2"

    return-object p0

    :pswitch_1d
    const-string p0, "\ud83c\uddf9\ud83c\uddf1"

    return-object p0

    :pswitch_1e
    const-string p0, "\ud83c\uddf9\ud83c\uddf0"

    return-object p0

    :pswitch_1f
    const-string p0, "\ud83c\uddf9\ud83c\uddef"

    return-object p0

    :pswitch_20
    const-string p0, "\ud83c\uddf9\ud83c\udded"

    return-object p0

    :pswitch_21
    const-string p0, "\ud83c\uddf9\ud83c\uddec"

    return-object p0

    :pswitch_22
    const-string p0, "\ud83c\uddf9\ud83c\uddeb"

    return-object p0

    :pswitch_23
    const-string p0, "\ud83c\uddf9\ud83c\udde9"

    return-object p0

    :pswitch_24
    const-string p0, "\ud83c\uddf9\ud83c\udde8"

    return-object p0

    :pswitch_25
    const-string p0, "\ud83c\uddf8\ud83c\uddff"

    return-object p0

    :pswitch_26
    const-string p0, "\ud83c\uddf8\ud83c\uddfe"

    return-object p0

    :pswitch_27
    const-string p0, "\ud83c\uddf8\ud83c\uddfd"

    return-object p0

    :pswitch_28
    const-string p0, "\ud83c\uddf8\ud83c\uddfb"

    return-object p0

    :pswitch_29
    const-string p0, "\ud83c\uddf8\ud83c\uddf9"

    return-object p0

    :pswitch_2a
    const-string p0, "\ud83c\uddf8\ud83c\uddf8"

    return-object p0

    :pswitch_2b
    const-string p0, "\ud83c\uddf8\ud83c\uddf7"

    return-object p0

    :pswitch_2c
    const-string p0, "\ud83c\uddf8\ud83c\uddf4"

    return-object p0

    :pswitch_2d
    const-string p0, "\ud83c\uddf8\ud83c\uddf3"

    return-object p0

    :pswitch_2e
    const-string p0, "\ud83c\uddf8\ud83c\uddf2"

    return-object p0

    :pswitch_2f
    const-string p0, "\ud83c\uddf8\ud83c\uddf1"

    return-object p0

    :pswitch_30
    const-string p0, "\ud83c\uddf8\ud83c\uddf0"

    return-object p0

    :pswitch_31
    const-string p0, "\ud83c\uddf8\ud83c\uddef"

    return-object p0

    :pswitch_32
    const-string p0, "\ud83c\uddf8\ud83c\uddee"

    return-object p0

    :pswitch_33
    const-string p0, "\ud83c\uddf8\ud83c\udded"

    return-object p0

    :pswitch_34
    const-string p0, "\ud83c\uddf8\ud83c\uddec"

    return-object p0

    :pswitch_35
    const-string p0, "\ud83c\uddf8\ud83c\uddea"

    return-object p0

    :pswitch_36
    const-string p0, "\ud83c\uddf8\ud83c\udde9"

    return-object p0

    :pswitch_37
    const-string p0, "\ud83c\uddf8\ud83c\udde8"

    return-object p0

    :pswitch_38
    const-string p0, "\ud83c\uddf8\ud83c\udde7"

    return-object p0

    :pswitch_39
    const-string p0, "\ud83c\uddf8\ud83c\udde6"

    return-object p0

    :pswitch_3a
    const-string p0, "\ud83c\uddf7\ud83c\uddfc"

    return-object p0

    :pswitch_3b
    const-string p0, "\ud83c\uddf7\ud83c\uddfa"

    return-object p0

    :pswitch_3c
    const-string p0, "\ud83c\uddf7\ud83c\uddf8"

    return-object p0

    :pswitch_3d
    const-string p0, "\ud83c\uddf7\ud83c\uddf4"

    return-object p0

    :pswitch_3e
    const-string p0, "\ud83c\uddf7\ud83c\uddea"

    return-object p0

    :pswitch_3f
    const-string p0, "\ud83c\uddf6\ud83c\udde6"

    return-object p0

    :pswitch_40
    const-string p0, "\ud83c\uddf5\ud83c\uddfe"

    return-object p0

    :pswitch_41
    const-string p0, "\ud83c\uddf5\ud83c\uddfc"

    return-object p0

    :pswitch_42
    const-string p0, "\ud83c\uddf5\ud83c\uddf9"

    return-object p0

    :pswitch_43
    const-string p0, "\ud83c\uddf5\ud83c\uddf8"

    return-object p0

    :pswitch_44
    const-string p0, "\ud83c\uddf5\ud83c\uddf7"

    return-object p0

    :pswitch_45
    const-string p0, "\ud83c\uddf5\ud83c\uddf3"

    return-object p0

    :pswitch_46
    const-string p0, "\ud83c\uddf5\ud83c\uddf2"

    return-object p0

    :pswitch_47
    const-string p0, "\ud83c\uddf5\ud83c\uddf1"

    return-object p0

    :pswitch_48
    const-string p0, "\ud83c\uddf5\ud83c\uddf0"

    return-object p0

    :pswitch_49
    const-string p0, "\ud83c\uddf5\ud83c\udded"

    return-object p0

    :pswitch_4a
    const-string p0, "\ud83c\uddf5\ud83c\uddec"

    return-object p0

    :pswitch_4b
    const-string p0, "\ud83c\uddf5\ud83c\uddeb"

    return-object p0

    :pswitch_4c
    const-string p0, "\ud83c\uddf5\ud83c\uddea"

    return-object p0

    :pswitch_4d
    const-string p0, "\ud83c\uddf5\ud83c\udde6"

    return-object p0

    :pswitch_4e
    const-string p0, "\ud83c\uddf4\ud83c\uddf2"

    return-object p0

    :pswitch_4f
    const-string p0, "\ud83c\uddf3\ud83c\uddff"

    return-object p0

    :pswitch_50
    const-string p0, "\ud83c\uddf3\ud83c\uddfa"

    return-object p0

    :pswitch_51
    const-string p0, "\ud83c\uddf3\ud83c\uddf7"

    return-object p0

    :pswitch_52
    const-string p0, "\ud83c\uddf3\ud83c\uddf5"

    return-object p0

    :pswitch_53
    const-string p0, "\ud83c\uddf3\ud83c\uddf4"

    return-object p0

    :pswitch_54
    const-string p0, "\ud83c\uddf3\ud83c\uddf1"

    return-object p0

    :pswitch_55
    const-string p0, "\ud83c\uddf3\ud83c\uddee"

    return-object p0

    :pswitch_56
    const-string p0, "\ud83c\uddf3\ud83c\uddec"

    return-object p0

    :pswitch_57
    const-string p0, "\ud83c\uddf3\ud83c\uddeb"

    return-object p0

    :pswitch_58
    const-string p0, "\ud83c\uddf3\ud83c\uddea"

    return-object p0

    :pswitch_59
    const-string p0, "\ud83c\uddf3\ud83c\udde8"

    return-object p0

    :pswitch_5a
    const-string p0, "\ud83c\uddf3\ud83c\udde6"

    return-object p0

    :pswitch_5b
    const-string p0, "\ud83c\uddf2\ud83c\uddff"

    return-object p0

    :pswitch_5c
    const-string p0, "\ud83c\uddf2\ud83c\uddfe"

    return-object p0

    :pswitch_5d
    const-string p0, "\ud83c\uddf2\ud83c\uddfd"

    return-object p0

    :pswitch_5e
    const-string p0, "\ud83c\uddf2\ud83c\uddfc"

    return-object p0

    :pswitch_5f
    const-string p0, "\ud83c\uddf2\ud83c\uddfb"

    return-object p0

    :pswitch_60
    const-string p0, "\ud83c\uddf2\ud83c\uddfa"

    return-object p0

    :pswitch_61
    const-string p0, "\ud83c\uddf2\ud83c\uddf9"

    return-object p0

    :pswitch_62
    const-string p0, "\ud83c\uddf2\ud83c\uddf8"

    return-object p0

    :pswitch_63
    const-string p0, "\ud83c\uddf2\ud83c\uddf7"

    return-object p0

    :pswitch_64
    const-string p0, "\ud83c\uddf2\ud83c\uddf6"

    return-object p0

    :pswitch_65
    const-string p0, "\ud83c\uddf2\ud83c\uddf5"

    return-object p0

    :pswitch_66
    const-string p0, "\ud83c\uddf2\ud83c\uddf4"

    return-object p0

    :pswitch_67
    const-string p0, "\ud83c\uddf2\ud83c\uddf3"

    return-object p0

    :pswitch_68
    const-string p0, "\ud83c\uddf2\ud83c\uddf2"

    return-object p0

    :pswitch_69
    const-string p0, "\ud83c\uddf2\ud83c\uddf1"

    return-object p0

    :pswitch_6a
    const-string p0, "\ud83c\uddf2\ud83c\uddf0"

    return-object p0

    :pswitch_6b
    const-string p0, "\ud83c\uddf2\ud83c\udded"

    return-object p0

    :pswitch_6c
    const-string p0, "\ud83c\uddf2\ud83c\uddec"

    return-object p0

    :pswitch_6d
    const-string p0, "\ud83c\uddf2\ud83c\uddeb"

    return-object p0

    :pswitch_6e
    const-string p0, "\ud83c\uddf2\ud83c\uddea"

    return-object p0

    :pswitch_6f
    const-string p0, "\ud83c\uddf2\ud83c\udde9"

    return-object p0

    :pswitch_70
    const-string p0, "\ud83c\uddf2\ud83c\udde8"

    return-object p0

    :pswitch_71
    const-string p0, "\ud83c\uddf2\ud83c\udde6"

    return-object p0

    :pswitch_72
    const-string p0, "\ud83c\uddf1\ud83c\uddfe"

    return-object p0

    :pswitch_73
    const-string p0, "\ud83c\uddf1\ud83c\uddfb"

    return-object p0

    :pswitch_74
    const-string p0, "\ud83c\uddf1\ud83c\uddfa"

    return-object p0

    :pswitch_75
    const-string p0, "\ud83c\uddf1\ud83c\uddf9"

    return-object p0

    :pswitch_76
    const-string p0, "\ud83c\uddf1\ud83c\uddf8"

    return-object p0

    :pswitch_77
    const-string p0, "\ud83c\uddf1\ud83c\uddf7"

    return-object p0

    :pswitch_78
    const-string p0, "\ud83c\uddf1\ud83c\uddf0"

    return-object p0

    :pswitch_79
    const-string p0, "\ud83c\uddf1\ud83c\uddee"

    return-object p0

    :pswitch_7a
    const-string p0, "\ud83c\uddf1\ud83c\udde8"

    return-object p0

    :pswitch_7b
    const-string p0, "\ud83c\uddf1\ud83c\udde7"

    return-object p0

    :pswitch_7c
    const-string p0, "\ud83c\uddf1\ud83c\udde6"

    return-object p0

    :pswitch_7d
    const-string p0, "\ud83c\uddf0\ud83c\uddff"

    return-object p0

    :pswitch_7e
    const-string p0, "\ud83c\uddf0\ud83c\uddfe"

    return-object p0

    :pswitch_7f
    const-string p0, "\ud83c\uddf0\ud83c\uddfc"

    return-object p0

    :pswitch_80
    const-string p0, "\ud83c\uddf0\ud83c\uddf7"

    return-object p0

    :pswitch_81
    const-string p0, "\ud83c\uddf0\ud83c\uddf5"

    return-object p0

    :pswitch_82
    const-string p0, "\ud83c\uddf0\ud83c\uddf3"

    return-object p0

    :pswitch_83
    const-string p0, "\ud83c\uddf0\ud83c\uddf2"

    return-object p0

    :pswitch_84
    const-string p0, "\ud83c\uddf0\ud83c\uddee"

    return-object p0

    :pswitch_85
    const-string p0, "\ud83c\uddf0\ud83c\udded"

    return-object p0

    :pswitch_86
    const-string p0, "\ud83c\uddf0\ud83c\uddec"

    return-object p0

    :pswitch_87
    const-string p0, "\ud83c\uddf0\ud83c\uddea"

    return-object p0

    :pswitch_88
    const-string p0, "\ud83c\uddef\ud83c\uddf5"

    return-object p0

    :pswitch_89
    const-string p0, "\ud83c\uddef\ud83c\uddf4"

    return-object p0

    :pswitch_8a
    const-string p0, "\ud83c\uddef\ud83c\uddf2"

    return-object p0

    :pswitch_8b
    const-string p0, "\ud83c\uddef\ud83c\uddea"

    return-object p0

    :pswitch_8c
    const-string p0, "\ud83c\uddee\ud83c\uddf9"

    return-object p0

    :pswitch_8d
    const-string p0, "\ud83c\uddee\ud83c\uddf8"

    return-object p0

    :pswitch_8e
    const-string p0, "\ud83c\uddee\ud83c\uddf7"

    return-object p0

    :pswitch_8f
    const-string p0, "\ud83c\uddee\ud83c\uddf6"

    return-object p0

    :pswitch_90
    const-string p0, "\ud83c\uddee\ud83c\uddf4"

    return-object p0

    :pswitch_91
    const-string p0, "\ud83c\uddee\ud83c\uddf3"

    return-object p0

    :pswitch_92
    const-string p0, "\ud83c\uddee\ud83c\uddf2"

    return-object p0

    :pswitch_93
    const-string p0, "\ud83c\uddee\ud83c\uddf1"

    return-object p0

    :pswitch_94
    const-string p0, "\ud83c\uddee\ud83c\uddea"

    return-object p0

    :pswitch_95
    const-string p0, "\ud83c\uddee\ud83c\udde9"

    return-object p0

    :pswitch_96
    const-string p0, "\ud83c\udded\ud83c\uddfa"

    return-object p0

    :pswitch_97
    const-string p0, "\ud83c\udded\ud83c\uddf9"

    return-object p0

    :pswitch_98
    const-string p0, "\ud83c\udded\ud83c\uddf7"

    return-object p0

    :pswitch_99
    const-string p0, "\ud83c\udded\ud83c\uddf3"

    return-object p0

    :pswitch_9a
    const-string p0, "\ud83c\udded\ud83c\uddf2"

    return-object p0

    :pswitch_9b
    const-string p0, "\ud83c\udded\ud83c\uddf0"

    return-object p0

    :pswitch_9c
    const-string p0, "\ud83c\uddec\ud83c\uddfe"

    return-object p0

    :pswitch_9d
    const-string p0, "\ud83c\uddec\ud83c\uddfc"

    return-object p0

    :pswitch_9e
    const-string p0, "\ud83c\uddec\ud83c\uddfa"

    return-object p0

    :pswitch_9f
    const-string p0, "\ud83c\uddec\ud83c\uddf9"

    return-object p0

    :pswitch_a0
    const-string p0, "\ud83c\uddec\ud83c\uddf8"

    return-object p0

    :pswitch_a1
    const-string p0, "\ud83c\uddec\ud83c\uddf7"

    return-object p0

    :pswitch_a2
    const-string p0, "\ud83c\uddec\ud83c\uddf6"

    return-object p0

    :pswitch_a3
    const-string p0, "\ud83c\uddec\ud83c\uddf5"

    return-object p0

    :pswitch_a4
    const-string p0, "\ud83c\uddec\ud83c\uddf3"

    return-object p0

    :pswitch_a5
    const-string p0, "\ud83c\uddec\ud83c\uddf2"

    return-object p0

    :pswitch_a6
    const-string p0, "\ud83c\uddec\ud83c\uddf1"

    return-object p0

    :pswitch_a7
    const-string p0, "\ud83c\uddec\ud83c\uddee"

    return-object p0

    :pswitch_a8
    const-string p0, "\ud83c\uddec\ud83c\udded"

    return-object p0

    :pswitch_a9
    const-string p0, "\ud83c\uddec\ud83c\uddec"

    return-object p0

    :pswitch_aa
    const-string p0, "\ud83c\uddec\ud83c\uddeb"

    return-object p0

    :pswitch_ab
    const-string p0, "\ud83c\uddec\ud83c\uddea"

    return-object p0

    :pswitch_ac
    const-string p0, "\ud83c\uddec\ud83c\udde9"

    return-object p0

    :pswitch_ad
    const-string p0, "\ud83c\uddec\ud83c\udde7"

    return-object p0

    :pswitch_ae
    const-string p0, "\ud83c\uddec\ud83c\udde6"

    return-object p0

    :pswitch_af
    const-string p0, "\ud83c\uddeb\ud83c\uddf7"

    return-object p0

    :pswitch_b0
    const-string p0, "\ud83c\uddeb\ud83c\uddf4"

    return-object p0

    :pswitch_b1
    const-string p0, "\ud83c\uddeb\ud83c\uddf2"

    return-object p0

    :pswitch_b2
    const-string p0, "\ud83c\uddeb\ud83c\uddf0"

    return-object p0

    :pswitch_b3
    const-string p0, "\ud83c\uddeb\ud83c\uddef"

    return-object p0

    :pswitch_b4
    const-string p0, "\ud83c\uddeb\ud83c\uddee"

    return-object p0

    :pswitch_b5
    const-string p0, "\ud83c\uddea\ud83c\uddf9"

    return-object p0

    :pswitch_b6
    const-string p0, "\ud83c\uddea\ud83c\uddf8"

    return-object p0

    :pswitch_b7
    const-string p0, "\ud83c\uddea\ud83c\uddf7"

    return-object p0

    :pswitch_b8
    const-string p0, "\ud83c\uddea\ud83c\udded"

    return-object p0

    :pswitch_b9
    const-string p0, "\ud83c\uddea\ud83c\uddec"

    return-object p0

    :pswitch_ba
    const-string p0, "\ud83c\uddea\ud83c\uddea"

    return-object p0

    :pswitch_bb
    const-string p0, "\ud83c\uddea\ud83c\udde8"

    return-object p0

    :pswitch_bc
    const-string p0, "\ud83c\udde9\ud83c\uddff"

    return-object p0

    :pswitch_bd
    const-string p0, "\ud83c\udde9\ud83c\uddf4"

    return-object p0

    :pswitch_be
    const-string p0, "\ud83c\udde9\ud83c\uddf2"

    return-object p0

    :pswitch_bf
    const-string p0, "\ud83c\udde9\ud83c\uddf0"

    return-object p0

    :pswitch_c0
    const-string p0, "\ud83c\udde9\ud83c\uddef"

    return-object p0

    :pswitch_c1
    const-string p0, "\ud83c\udde9\ud83c\uddea"

    return-object p0

    :pswitch_c2
    const-string p0, "\ud83c\udde8\ud83c\uddff"

    return-object p0

    :pswitch_c3
    const-string p0, "\ud83c\udde8\ud83c\uddfe"

    return-object p0

    :pswitch_c4
    const-string p0, "\ud83c\udde8\ud83c\uddfd"

    return-object p0

    :pswitch_c5
    const-string p0, "\ud83c\udde8\ud83c\uddfc"

    return-object p0

    :pswitch_c6
    const-string p0, "\ud83c\udde8\ud83c\uddfb"

    return-object p0

    :pswitch_c7
    const-string p0, "\ud83c\udde8\ud83c\uddfa"

    return-object p0

    :pswitch_c8
    const-string p0, "\ud83c\udde8\ud83c\uddf7"

    return-object p0

    :pswitch_c9
    const-string p0, "\ud83c\udde8\ud83c\uddf4"

    return-object p0

    :pswitch_ca
    const-string p0, "\ud83c\udde8\ud83c\uddf3"

    return-object p0

    :pswitch_cb
    const-string p0, "\ud83c\udde8\ud83c\uddf2"

    return-object p0

    :pswitch_cc
    const-string p0, "\ud83c\udde8\ud83c\uddf1"

    return-object p0

    :pswitch_cd
    const-string p0, "\ud83c\udde8\ud83c\uddf0"

    return-object p0

    :pswitch_ce
    const-string p0, "\ud83c\udde8\ud83c\uddee"

    return-object p0

    :pswitch_cf
    const-string p0, "\ud83c\udde8\ud83c\udded"

    return-object p0

    :pswitch_d0
    const-string p0, "\ud83c\udde8\ud83c\uddec"

    return-object p0

    :pswitch_d1
    const-string p0, "\ud83c\udde8\ud83c\uddeb"

    return-object p0

    :pswitch_d2
    const-string p0, "\ud83c\udde8\ud83c\udde9"

    return-object p0

    :pswitch_d3
    const-string p0, "\ud83c\udde8\ud83c\udde8"

    return-object p0

    :pswitch_d4
    const-string p0, "\ud83c\udde8\ud83c\udde6"

    return-object p0

    :pswitch_d5
    const-string p0, "\ud83c\udde7\ud83c\uddff"

    return-object p0

    :pswitch_d6
    const-string p0, "\ud83c\udde7\ud83c\uddfe"

    return-object p0

    :pswitch_d7
    const-string p0, "\ud83c\udde7\ud83c\uddfc"

    return-object p0

    :pswitch_d8
    const-string p0, "\ud83c\udde7\ud83c\uddfb"

    return-object p0

    :pswitch_d9
    const-string p0, "\ud83c\udde7\ud83c\uddf9"

    return-object p0

    :pswitch_da
    const-string p0, "\ud83c\udde7\ud83c\uddf8"

    return-object p0

    :pswitch_db
    const-string p0, "\ud83c\udde7\ud83c\uddf7"

    return-object p0

    :pswitch_dc
    const-string p0, "\ud83c\udde7\ud83c\uddf6"

    return-object p0

    :pswitch_dd
    const-string p0, "\ud83c\udde7\ud83c\uddf4"

    return-object p0

    :pswitch_de
    const-string p0, "\ud83c\udde7\ud83c\uddf3"

    return-object p0

    :pswitch_df
    const-string p0, "\ud83c\udde7\ud83c\uddf2"

    return-object p0

    :pswitch_e0
    const-string p0, "\ud83c\udde7\ud83c\uddf1"

    return-object p0

    :pswitch_e1
    const-string p0, "\ud83c\udde7\ud83c\uddef"

    return-object p0

    :pswitch_e2
    const-string p0, "\ud83c\udde7\ud83c\uddee"

    return-object p0

    :pswitch_e3
    const-string p0, "\ud83c\udde7\ud83c\udded"

    return-object p0

    :pswitch_e4
    const-string p0, "\ud83c\udde7\ud83c\uddec"

    return-object p0

    :pswitch_e5
    const-string p0, "\ud83c\udde7\ud83c\uddeb"

    return-object p0

    :pswitch_e6
    const-string p0, "\ud83c\udde7\ud83c\uddea"

    return-object p0

    :pswitch_e7
    const-string p0, "\ud83c\udde7\ud83c\udde9"

    return-object p0

    :pswitch_e8
    const-string p0, "\ud83c\udde7\ud83c\udde7"

    return-object p0

    :pswitch_e9
    const-string p0, "\ud83c\udde7\ud83c\udde6"

    return-object p0

    :pswitch_ea
    const-string p0, "\ud83c\udde6\ud83c\uddff"

    return-object p0

    :pswitch_eb
    const-string p0, "\ud83c\udde6\ud83c\uddfd"

    return-object p0

    :pswitch_ec
    const-string p0, "\ud83c\udde6\ud83c\uddfc"

    return-object p0

    :pswitch_ed
    const-string p0, "\ud83c\udde6\ud83c\uddfa"

    return-object p0

    :pswitch_ee
    const-string p0, "\ud83c\udde6\ud83c\uddf9"

    return-object p0

    :pswitch_ef
    const-string p0, "\ud83c\udde6\ud83c\uddf8"

    return-object p0

    :pswitch_f0
    const-string p0, "\ud83c\udde6\ud83c\uddf7"

    return-object p0

    :pswitch_f1
    const-string p0, "\ud83c\udde6\ud83c\uddf6"

    return-object p0

    :pswitch_f2
    const-string p0, "\ud83c\udde6\ud83c\uddf4"

    return-object p0

    :pswitch_f3
    const-string p0, "\ud83c\udde6\ud83c\uddf2"

    return-object p0

    :pswitch_f4
    const-string p0, "\ud83c\udde6\ud83c\uddf1"

    return-object p0

    :pswitch_f5
    const-string p0, "\ud83c\udde6\ud83c\uddee"

    return-object p0

    :pswitch_f6
    const-string p0, "\ud83c\udde6\ud83c\uddec"

    return-object p0

    :pswitch_f7
    const-string p0, "\ud83c\udde6\ud83c\uddeb"

    return-object p0

    :pswitch_f8
    const-string p0, "\ud83c\udde6\ud83c\uddea"

    return-object p0

    :pswitch_f9
    const-string p0, "\ud83c\udde6\ud83c\udde9"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_f9
        0xc24 -> :sswitch_f8
        0xc25 -> :sswitch_f7
        0xc26 -> :sswitch_f6
        0xc28 -> :sswitch_f5
        0xc2b -> :sswitch_f4
        0xc2c -> :sswitch_f3
        0xc2e -> :sswitch_f2
        0xc30 -> :sswitch_f1
        0xc31 -> :sswitch_f0
        0xc32 -> :sswitch_ef
        0xc33 -> :sswitch_ee
        0xc34 -> :sswitch_ed
        0xc36 -> :sswitch_ec
        0xc37 -> :sswitch_eb
        0xc39 -> :sswitch_ea
        0xc3f -> :sswitch_e9
        0xc40 -> :sswitch_e8
        0xc42 -> :sswitch_e7
        0xc43 -> :sswitch_e6
        0xc44 -> :sswitch_e5
        0xc45 -> :sswitch_e4
        0xc46 -> :sswitch_e3
        0xc47 -> :sswitch_e2
        0xc48 -> :sswitch_e1
        0xc4a -> :sswitch_e0
        0xc4b -> :sswitch_df
        0xc4c -> :sswitch_de
        0xc4d -> :sswitch_dd
        0xc4f -> :sswitch_dc
        0xc50 -> :sswitch_db
        0xc51 -> :sswitch_da
        0xc52 -> :sswitch_d9
        0xc54 -> :sswitch_d8
        0xc55 -> :sswitch_d7
        0xc57 -> :sswitch_d6
        0xc58 -> :sswitch_d5
        0xc5e -> :sswitch_d4
        0xc60 -> :sswitch_d3
        0xc61 -> :sswitch_d2
        0xc63 -> :sswitch_d1
        0xc64 -> :sswitch_d0
        0xc65 -> :sswitch_cf
        0xc66 -> :sswitch_ce
        0xc68 -> :sswitch_cd
        0xc69 -> :sswitch_cc
        0xc6a -> :sswitch_cb
        0xc6b -> :sswitch_ca
        0xc6c -> :sswitch_c9
        0xc6f -> :sswitch_c8
        0xc72 -> :sswitch_c7
        0xc73 -> :sswitch_c6
        0xc74 -> :sswitch_c5
        0xc75 -> :sswitch_c4
        0xc76 -> :sswitch_c3
        0xc77 -> :sswitch_c2
        0xc81 -> :sswitch_c1
        0xc86 -> :sswitch_c0
        0xc87 -> :sswitch_bf
        0xc89 -> :sswitch_be
        0xc8b -> :sswitch_bd
        0xc96 -> :sswitch_bc
        0xc9e -> :sswitch_bb
        0xca0 -> :sswitch_ba
        0xca2 -> :sswitch_b9
        0xca3 -> :sswitch_b8
        0xcad -> :sswitch_b7
        0xcae -> :sswitch_b6
        0xcaf -> :sswitch_b5
        0xcc3 -> :sswitch_b4
        0xcc4 -> :sswitch_b3
        0xcc5 -> :sswitch_b2
        0xcc7 -> :sswitch_b1
        0xcc9 -> :sswitch_b0
        0xccc -> :sswitch_af
        0xcda -> :sswitch_ae
        0xcdb -> :sswitch_ad
        0xcdd -> :sswitch_ac
        0xcde -> :sswitch_ab
        0xcdf -> :sswitch_aa
        0xce0 -> :sswitch_a9
        0xce1 -> :sswitch_a8
        0xce2 -> :sswitch_a7
        0xce5 -> :sswitch_a6
        0xce6 -> :sswitch_a5
        0xce7 -> :sswitch_a4
        0xce9 -> :sswitch_a3
        0xcea -> :sswitch_a2
        0xceb -> :sswitch_a1
        0xcec -> :sswitch_a0
        0xced -> :sswitch_9f
        0xcee -> :sswitch_9e
        0xcf0 -> :sswitch_9d
        0xcf2 -> :sswitch_9c
        0xd03 -> :sswitch_9b
        0xd05 -> :sswitch_9a
        0xd06 -> :sswitch_99
        0xd0a -> :sswitch_98
        0xd0c -> :sswitch_97
        0xd0d -> :sswitch_96
        0xd1b -> :sswitch_95
        0xd1c -> :sswitch_94
        0xd23 -> :sswitch_93
        0xd24 -> :sswitch_92
        0xd25 -> :sswitch_91
        0xd26 -> :sswitch_90
        0xd28 -> :sswitch_8f
        0xd29 -> :sswitch_8e
        0xd2a -> :sswitch_8d
        0xd2b -> :sswitch_8c
        0xd3b -> :sswitch_8b
        0xd43 -> :sswitch_8a
        0xd45 -> :sswitch_89
        0xd46 -> :sswitch_88
        0xd5a -> :sswitch_87
        0xd5c -> :sswitch_86
        0xd5d -> :sswitch_85
        0xd5e -> :sswitch_84
        0xd62 -> :sswitch_83
        0xd63 -> :sswitch_82
        0xd65 -> :sswitch_81
        0xd67 -> :sswitch_80
        0xd6c -> :sswitch_7f
        0xd6e -> :sswitch_7e
        0xd6f -> :sswitch_7d
        0xd75 -> :sswitch_7c
        0xd76 -> :sswitch_7b
        0xd77 -> :sswitch_7a
        0xd7d -> :sswitch_79
        0xd7f -> :sswitch_78
        0xd86 -> :sswitch_77
        0xd87 -> :sswitch_76
        0xd88 -> :sswitch_75
        0xd89 -> :sswitch_74
        0xd8a -> :sswitch_73
        0xd8d -> :sswitch_72
        0xd94 -> :sswitch_71
        0xd96 -> :sswitch_70
        0xd97 -> :sswitch_6f
        0xd98 -> :sswitch_6e
        0xd99 -> :sswitch_6d
        0xd9a -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0xd9e -> :sswitch_6a
        0xd9f -> :sswitch_69
        0xda0 -> :sswitch_68
        0xda1 -> :sswitch_67
        0xda2 -> :sswitch_66
        0xda3 -> :sswitch_65
        0xda4 -> :sswitch_64
        0xda5 -> :sswitch_63
        0xda6 -> :sswitch_62
        0xda7 -> :sswitch_61
        0xda8 -> :sswitch_60
        0xda9 -> :sswitch_5f
        0xdaa -> :sswitch_5e
        0xdab -> :sswitch_5d
        0xdac -> :sswitch_5c
        0xdad -> :sswitch_5b
        0xdb3 -> :sswitch_5a
        0xdb5 -> :sswitch_59
        0xdb7 -> :sswitch_58
        0xdb8 -> :sswitch_57
        0xdb9 -> :sswitch_56
        0xdbb -> :sswitch_55
        0xdbe -> :sswitch_54
        0xdc1 -> :sswitch_53
        0xdc2 -> :sswitch_52
        0xdc4 -> :sswitch_51
        0xdc7 -> :sswitch_50
        0xdcc -> :sswitch_4f
        0xdde -> :sswitch_4e
        0xdf1 -> :sswitch_4d
        0xdf5 -> :sswitch_4c
        0xdf6 -> :sswitch_4b
        0xdf7 -> :sswitch_4a
        0xdf8 -> :sswitch_49
        0xdfb -> :sswitch_48
        0xdfc -> :sswitch_47
        0xdfd -> :sswitch_46
        0xdfe -> :sswitch_45
        0xe02 -> :sswitch_44
        0xe03 -> :sswitch_43
        0xe04 -> :sswitch_42
        0xe07 -> :sswitch_41
        0xe09 -> :sswitch_40
        0xe10 -> :sswitch_3f
        0xe33 -> :sswitch_3e
        0xe3d -> :sswitch_3d
        0xe41 -> :sswitch_3c
        0xe43 -> :sswitch_3b
        0xe45 -> :sswitch_3a
        0xe4e -> :sswitch_39
        0xe4f -> :sswitch_38
        0xe50 -> :sswitch_37
        0xe51 -> :sswitch_36
        0xe52 -> :sswitch_35
        0xe54 -> :sswitch_34
        0xe55 -> :sswitch_33
        0xe56 -> :sswitch_32
        0xe57 -> :sswitch_31
        0xe58 -> :sswitch_30
        0xe59 -> :sswitch_2f
        0xe5a -> :sswitch_2e
        0xe5b -> :sswitch_2d
        0xe5c -> :sswitch_2c
        0xe5f -> :sswitch_2b
        0xe60 -> :sswitch_2a
        0xe61 -> :sswitch_29
        0xe63 -> :sswitch_28
        0xe65 -> :sswitch_27
        0xe66 -> :sswitch_26
        0xe67 -> :sswitch_25
        0xe6f -> :sswitch_24
        0xe70 -> :sswitch_23
        0xe72 -> :sswitch_22
        0xe73 -> :sswitch_21
        0xe74 -> :sswitch_20
        0xe76 -> :sswitch_1f
        0xe77 -> :sswitch_1e
        0xe78 -> :sswitch_1d
        0xe79 -> :sswitch_1c
        0xe7a -> :sswitch_1b
        0xe7b -> :sswitch_1a
        0xe7e -> :sswitch_19
        0xe80 -> :sswitch_18
        0xe82 -> :sswitch_17
        0xe83 -> :sswitch_16
        0xe86 -> :sswitch_15
        0xe8c -> :sswitch_14
        0xe92 -> :sswitch_13
        0xe98 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method static a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->c()V

    .line 240
    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7393
    iget-object p0, p1, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    return-object p0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hbb20/a;->d(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1735
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1738
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCPCountry"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method private static b(Lcom/hbb20/a;)I
    .locals 2

    .line 400
    invoke-direct {p0}, Lcom/hbb20/a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "zw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "zm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xf0

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "za"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xef

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "yt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xee

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xed

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "xk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xec

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "ws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xeb

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "wf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xea

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "vu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xe9

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "vn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xe8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "vi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe7

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "vg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xe6

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "ve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xe5

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "vc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xe4

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "va"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xe3

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "uz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xe2

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "uy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xe1

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xe0

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "ug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xdf

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xde

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xdd

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xdc

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xdb

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xda

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xd9

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xd8

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "tn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xd7

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xd6

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "tl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xd5

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "tk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0xd4

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "tj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xd3

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xd2

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "tg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0xd1

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0xd0

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "tc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xcf

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "sz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0xce

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0xcd

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "sx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0xcc

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "sv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0xcb

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "st"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0xca

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "ss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0xc9

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "sr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0xc8

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0xc7

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "sn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0xc6

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "sm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0xc5

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "sl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0xc4

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "sk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0xc3

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "si"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0xc2

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0xc1

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0xc0

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "se"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0xbf

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0xbe

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "sc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0xbd

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "sb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0xbc

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "sa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0xbb

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "rw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0xba

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0xb9

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0xb8

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "ro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0xb7

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "re"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0xb6

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "qa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0xb5

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "py"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0xb4

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0xb3

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0xb2

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v1, 0xb1

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "pr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v1, 0xb0

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "pn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v1, 0xaf

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "pm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v1, 0xae

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v1, 0xad

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0xac

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "ph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v1, 0xab

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "pg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v1, 0xaa

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "pf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v1, 0xa9

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "pe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v1, 0xa8

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "pa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v1, 0xa7

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "om"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v1, 0xa6

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "nz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v1, 0xa5

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "nu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v1, 0xa4

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "nr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v1, 0xa3

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "np"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v1, 0xa2

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v1, 0xa1

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v1, 0xa0

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "ni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v1, 0x9f

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "ng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v1, 0x9e

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "nf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v1, 0x9d

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "ne"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v1, 0x9c

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v1, 0x9b

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "na"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v1, 0x9a

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "mz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v1, 0x99

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "my"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v1, 0x98

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "mx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v1, 0x97

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "mw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v1, 0x96

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "mv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v1, 0x95

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "mu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v1, 0x94

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "mt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v1, 0x93

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v1, 0x92

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "mr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v1, 0x91

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "mq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v1, 0x90

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "mp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v1, 0x8f

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "mo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v1, 0x8e

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "mn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v1, 0x8d

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v1, 0x8c

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "ml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v1, 0x8b

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "mk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v1, 0x8a

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "mh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v1, 0x89

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "mg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v1, 0x88

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "mf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v1, 0x87

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v1, 0x86

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v1, 0x85

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "mc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v1, 0x84

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "ma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v1, 0x83

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "ly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v1, 0x82

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "lv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v1, 0x81

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "lu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v1, 0x80

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v1, 0x7f

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "ls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v1, 0x7e

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v1, 0x7d

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "lk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v1, 0x7c

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v1, 0x7b

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "lc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v1, 0x7a

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "lb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v1, 0x79

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "la"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v1, 0x78

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "kz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v1, 0x77

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "ky"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v1, 0x76

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "kw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v1, 0x75

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v1, 0x74

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "kp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v1, 0x73

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "kn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v1, 0x72

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "km"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v1, 0x71

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "ki"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v1, 0x70

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "kh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v1, 0x6f

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v1, 0x6e

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "ke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v1, 0x6d

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v1, 0x6c

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "jo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v1, 0x6b

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "jm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v1, 0x6a

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "je"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v1, 0x69

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v1, 0x68

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v1, 0x67

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "ir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v1, 0x66

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "iq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v1, 0x65

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v1, 0x64

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v1, 0x63

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v1, 0x62

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "il"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v1, 0x61

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "ie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v1, 0x60

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v1, 0x5f

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "hu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v1, 0x5e

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "ht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v1, 0x5d

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_96
    const-string v0, "hn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v1, 0x5b

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v1, 0x5a

    goto/16 :goto_0

    :sswitch_98
    const-string v0, "gy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v1, 0x59

    goto/16 :goto_0

    :sswitch_99
    const-string v0, "gw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v1, 0x58

    goto/16 :goto_0

    :sswitch_9a
    const-string v0, "gu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v1, 0x57

    goto/16 :goto_0

    :sswitch_9b
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v1, 0x56

    goto/16 :goto_0

    :sswitch_9c
    const-string v0, "gr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_9d
    const-string v0, "gq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_9e
    const-string v0, "gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v1, 0x53

    goto/16 :goto_0

    :sswitch_9f
    const-string v0, "gn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v1, 0x52

    goto/16 :goto_0

    :sswitch_a0
    const-string v0, "gm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v1, 0x51

    goto/16 :goto_0

    :sswitch_a1
    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v1, 0x50

    goto/16 :goto_0

    :sswitch_a2
    const-string v0, "gi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v1, 0x4f

    goto/16 :goto_0

    :sswitch_a3
    const-string v0, "gh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v1, 0x4e

    goto/16 :goto_0

    :sswitch_a4
    const-string v0, "gg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v1, 0x4d

    goto/16 :goto_0

    :sswitch_a5
    const-string v0, "gf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v1, 0x4c

    goto/16 :goto_0

    :sswitch_a6
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v1, 0x4b

    goto/16 :goto_0

    :sswitch_a7
    const-string v0, "gd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    goto/16 :goto_0

    :cond_a7
    const/16 v1, 0x4a

    goto/16 :goto_0

    :sswitch_a8
    const-string v0, "gb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    goto/16 :goto_0

    :cond_a8
    const/16 v1, 0x49

    goto/16 :goto_0

    :sswitch_a9
    const-string v0, "ga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    goto/16 :goto_0

    :cond_a9
    const/16 v1, 0x48

    goto/16 :goto_0

    :sswitch_aa
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_0

    :cond_aa
    const/16 v1, 0x47

    goto/16 :goto_0

    :sswitch_ab
    const-string v0, "fo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab

    goto/16 :goto_0

    :cond_ab
    const/16 v1, 0x46

    goto/16 :goto_0

    :sswitch_ac
    const-string v0, "fm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto/16 :goto_0

    :cond_ac
    const/16 v1, 0x45

    goto/16 :goto_0

    :sswitch_ad
    const-string v0, "fk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad

    goto/16 :goto_0

    :cond_ad
    const/16 v1, 0x44

    goto/16 :goto_0

    :sswitch_ae
    const-string v0, "fj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ae

    goto/16 :goto_0

    :cond_ae
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_af
    const-string v0, "fi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af

    goto/16 :goto_0

    :cond_af
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_b0
    const-string v0, "et"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b0

    goto/16 :goto_0

    :cond_b0
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_b1
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b1

    goto/16 :goto_0

    :cond_b1
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_b2
    const-string v0, "er"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_0

    :cond_b2
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_b3
    const-string v0, "eg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_0

    :cond_b3
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_b4
    const-string v0, "ee"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4

    goto/16 :goto_0

    :cond_b4
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_b5
    const-string v0, "ec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5

    goto/16 :goto_0

    :cond_b5
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_b6
    const-string v0, "dz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    goto/16 :goto_0

    :cond_b6
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_b7
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto/16 :goto_0

    :cond_b7
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_b8
    const-string v0, "dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_0

    :cond_b8
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_b9
    const-string v0, "dk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b9

    goto/16 :goto_0

    :cond_b9
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_ba
    const-string v0, "dj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    goto/16 :goto_0

    :cond_ba
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_bb
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bb

    goto/16 :goto_0

    :cond_bb
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_bc
    const-string v0, "cz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bc

    goto/16 :goto_0

    :cond_bc
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_bd
    const-string v0, "cy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto/16 :goto_0

    :cond_bd
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_be
    const-string v0, "cx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be

    goto/16 :goto_0

    :cond_be
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_bf
    const-string v0, "cw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bf

    goto/16 :goto_0

    :cond_bf
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_c0
    const-string v0, "cv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0

    goto/16 :goto_0

    :cond_c0
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_c1
    const-string v0, "cu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_0

    :cond_c1
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_c2
    const-string v0, "cr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_0

    :cond_c2
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_c3
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c3

    goto/16 :goto_0

    :cond_c3
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_c4
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    goto/16 :goto_0

    :cond_c4
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_c5
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto/16 :goto_0

    :cond_c5
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_c6
    const-string v0, "cl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_0

    :cond_c6
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_c7
    const-string v0, "ck"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    goto/16 :goto_0

    :cond_c7
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_c8
    const-string v0, "ci"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    goto/16 :goto_0

    :cond_c8
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_c9
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c9

    goto/16 :goto_0

    :cond_c9
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_ca
    const-string v0, "cg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ca

    goto/16 :goto_0

    :cond_ca
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_cb
    const-string v0, "cf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb

    goto/16 :goto_0

    :cond_cb
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_cc
    const-string v0, "cd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cc

    goto/16 :goto_0

    :cond_cc
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_cd
    const-string v0, "cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cd

    goto/16 :goto_0

    :cond_cd
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_ce
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ce

    goto/16 :goto_0

    :cond_ce
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_cf
    const-string v0, "bz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_0

    :cond_cf
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_d0
    const-string v0, "by"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_0

    :cond_d0
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_d1
    const-string v0, "bw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    goto/16 :goto_0

    :cond_d1
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_d2
    const-string v0, "bt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto/16 :goto_0

    :cond_d2
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_d3
    const-string v0, "bs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d3

    goto/16 :goto_0

    :cond_d3
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_d4
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_0

    :cond_d4
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_d5
    const-string v0, "bo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d5

    goto/16 :goto_0

    :cond_d5
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_d6
    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto/16 :goto_0

    :cond_d6
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_d7
    const-string v0, "bm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d7

    goto/16 :goto_0

    :cond_d7
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_d8
    const-string v0, "bl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d8

    goto/16 :goto_0

    :cond_d8
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_d9
    const-string v0, "bj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    goto/16 :goto_0

    :cond_d9
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_da
    const-string v0, "bi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_da

    goto/16 :goto_0

    :cond_da
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_db
    const-string v0, "bh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_db

    goto/16 :goto_0

    :cond_db
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_dc
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    goto/16 :goto_0

    :cond_dc
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_dd
    const-string v0, "bf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_0

    :cond_dd
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_de
    const-string v0, "be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_0

    :cond_de
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_df
    const-string v0, "bd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_df

    goto/16 :goto_0

    :cond_df
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_e0
    const-string v0, "bb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_0

    :cond_e0
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_e1
    const-string v0, "ba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e1

    goto/16 :goto_0

    :cond_e1
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_e2
    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_0

    :cond_e2
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_e3
    const-string v0, "ax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e3

    goto/16 :goto_0

    :cond_e3
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_e4
    const-string v0, "aw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e4

    goto/16 :goto_0

    :cond_e4
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e5
    const-string v0, "au"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e5

    goto/16 :goto_0

    :cond_e5
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_e6
    const-string v0, "at"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e6

    goto/16 :goto_0

    :cond_e6
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_e7
    const-string v0, "as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_0

    :cond_e7
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_e8
    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e8

    goto/16 :goto_0

    :cond_e8
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_e9
    const-string v0, "aq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e9

    goto/16 :goto_0

    :cond_e9
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_ea
    const-string v0, "ao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ea

    goto :goto_0

    :cond_ea
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_eb
    const-string v0, "am"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto :goto_0

    :cond_eb
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_ec
    const-string v0, "al"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto :goto_0

    :cond_ec
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_ed
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ed

    goto :goto_0

    :cond_ed
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_ee
    const-string v0, "ag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto :goto_0

    :cond_ee
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_ef
    const-string v0, "af"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ef

    goto :goto_0

    :cond_ef
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_f0
    const-string v0, "ae"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto :goto_0

    :cond_f0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f1
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f1

    goto :goto_0

    :cond_f1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 887
    sget p0, Lcom/hbb20/h$e;->flag_transparent:I

    return p0

    .line 885
    :pswitch_0
    sget p0, Lcom/hbb20/h$e;->flag_zimbabwe:I

    return p0

    .line 883
    :pswitch_1
    sget p0, Lcom/hbb20/h$e;->flag_zambia:I

    return p0

    .line 881
    :pswitch_2
    sget p0, Lcom/hbb20/h$e;->flag_south_africa:I

    return p0

    .line 879
    :pswitch_3
    sget p0, Lcom/hbb20/h$e;->flag_martinique:I

    return p0

    .line 877
    :pswitch_4
    sget p0, Lcom/hbb20/h$e;->flag_yemen:I

    return p0

    .line 875
    :pswitch_5
    sget p0, Lcom/hbb20/h$e;->flag_kosovo:I

    return p0

    .line 873
    :pswitch_6
    sget p0, Lcom/hbb20/h$e;->flag_samoa:I

    return p0

    .line 871
    :pswitch_7
    sget p0, Lcom/hbb20/h$e;->flag_wallis_and_futuna:I

    return p0

    .line 869
    :pswitch_8
    sget p0, Lcom/hbb20/h$e;->flag_vanuatu:I

    return p0

    .line 867
    :pswitch_9
    sget p0, Lcom/hbb20/h$e;->flag_vietnam:I

    return p0

    .line 865
    :pswitch_a
    sget p0, Lcom/hbb20/h$e;->flag_us_virgin_islands:I

    return p0

    .line 863
    :pswitch_b
    sget p0, Lcom/hbb20/h$e;->flag_british_virgin_islands:I

    return p0

    .line 861
    :pswitch_c
    sget p0, Lcom/hbb20/h$e;->flag_venezuela:I

    return p0

    .line 859
    :pswitch_d
    sget p0, Lcom/hbb20/h$e;->flag_saint_vicent_and_the_grenadines:I

    return p0

    .line 857
    :pswitch_e
    sget p0, Lcom/hbb20/h$e;->flag_vatican_city:I

    return p0

    .line 855
    :pswitch_f
    sget p0, Lcom/hbb20/h$e;->flag_uzbekistan:I

    return p0

    .line 853
    :pswitch_10
    sget p0, Lcom/hbb20/h$e;->flag_uruguay:I

    return p0

    .line 851
    :pswitch_11
    sget p0, Lcom/hbb20/h$e;->flag_united_states_of_america:I

    return p0

    .line 849
    :pswitch_12
    sget p0, Lcom/hbb20/h$e;->flag_uganda:I

    return p0

    .line 847
    :pswitch_13
    sget p0, Lcom/hbb20/h$e;->flag_ukraine:I

    return p0

    .line 845
    :pswitch_14
    sget p0, Lcom/hbb20/h$e;->flag_tanzania:I

    return p0

    .line 843
    :pswitch_15
    sget p0, Lcom/hbb20/h$e;->flag_taiwan:I

    return p0

    .line 841
    :pswitch_16
    sget p0, Lcom/hbb20/h$e;->flag_tuvalu:I

    return p0

    .line 839
    :pswitch_17
    sget p0, Lcom/hbb20/h$e;->flag_trinidad_and_tobago:I

    return p0

    .line 837
    :pswitch_18
    sget p0, Lcom/hbb20/h$e;->flag_turkey:I

    return p0

    .line 835
    :pswitch_19
    sget p0, Lcom/hbb20/h$e;->flag_tonga:I

    return p0

    .line 833
    :pswitch_1a
    sget p0, Lcom/hbb20/h$e;->flag_tunisia:I

    return p0

    .line 831
    :pswitch_1b
    sget p0, Lcom/hbb20/h$e;->flag_turkmenistan:I

    return p0

    .line 829
    :pswitch_1c
    sget p0, Lcom/hbb20/h$e;->flag_timor_leste:I

    return p0

    .line 827
    :pswitch_1d
    sget p0, Lcom/hbb20/h$e;->flag_tokelau:I

    return p0

    .line 825
    :pswitch_1e
    sget p0, Lcom/hbb20/h$e;->flag_tajikistan:I

    return p0

    .line 823
    :pswitch_1f
    sget p0, Lcom/hbb20/h$e;->flag_thailand:I

    return p0

    .line 821
    :pswitch_20
    sget p0, Lcom/hbb20/h$e;->flag_togo:I

    return p0

    .line 819
    :pswitch_21
    sget p0, Lcom/hbb20/h$e;->flag_chad:I

    return p0

    .line 817
    :pswitch_22
    sget p0, Lcom/hbb20/h$e;->flag_turks_and_caicos_islands:I

    return p0

    .line 815
    :pswitch_23
    sget p0, Lcom/hbb20/h$e;->flag_swaziland:I

    return p0

    .line 813
    :pswitch_24
    sget p0, Lcom/hbb20/h$e;->flag_syria:I

    return p0

    .line 811
    :pswitch_25
    sget p0, Lcom/hbb20/h$e;->flag_sint_maarten:I

    return p0

    .line 809
    :pswitch_26
    sget p0, Lcom/hbb20/h$e;->flag_el_salvador:I

    return p0

    .line 807
    :pswitch_27
    sget p0, Lcom/hbb20/h$e;->flag_sao_tome_and_principe:I

    return p0

    .line 805
    :pswitch_28
    sget p0, Lcom/hbb20/h$e;->flag_south_sudan:I

    return p0

    .line 803
    :pswitch_29
    sget p0, Lcom/hbb20/h$e;->flag_suriname:I

    return p0

    .line 801
    :pswitch_2a
    sget p0, Lcom/hbb20/h$e;->flag_somalia:I

    return p0

    .line 799
    :pswitch_2b
    sget p0, Lcom/hbb20/h$e;->flag_senegal:I

    return p0

    .line 797
    :pswitch_2c
    sget p0, Lcom/hbb20/h$e;->flag_san_marino:I

    return p0

    .line 795
    :pswitch_2d
    sget p0, Lcom/hbb20/h$e;->flag_sierra_leone:I

    return p0

    .line 793
    :pswitch_2e
    sget p0, Lcom/hbb20/h$e;->flag_slovakia:I

    return p0

    .line 791
    :pswitch_2f
    sget p0, Lcom/hbb20/h$e;->flag_slovenia:I

    return p0

    .line 789
    :pswitch_30
    sget p0, Lcom/hbb20/h$e;->flag_saint_helena:I

    return p0

    .line 787
    :pswitch_31
    sget p0, Lcom/hbb20/h$e;->flag_singapore:I

    return p0

    .line 785
    :pswitch_32
    sget p0, Lcom/hbb20/h$e;->flag_sweden:I

    return p0

    .line 783
    :pswitch_33
    sget p0, Lcom/hbb20/h$e;->flag_sudan:I

    return p0

    .line 781
    :pswitch_34
    sget p0, Lcom/hbb20/h$e;->flag_seychelles:I

    return p0

    .line 779
    :pswitch_35
    sget p0, Lcom/hbb20/h$e;->flag_soloman_islands:I

    return p0

    .line 777
    :pswitch_36
    sget p0, Lcom/hbb20/h$e;->flag_saudi_arabia:I

    return p0

    .line 775
    :pswitch_37
    sget p0, Lcom/hbb20/h$e;->flag_rwanda:I

    return p0

    .line 773
    :pswitch_38
    sget p0, Lcom/hbb20/h$e;->flag_russian_federation:I

    return p0

    .line 771
    :pswitch_39
    sget p0, Lcom/hbb20/h$e;->flag_serbia:I

    return p0

    .line 769
    :pswitch_3a
    sget p0, Lcom/hbb20/h$e;->flag_romania:I

    return p0

    .line 767
    :pswitch_3b
    sget p0, Lcom/hbb20/h$e;->flag_martinique:I

    return p0

    .line 765
    :pswitch_3c
    sget p0, Lcom/hbb20/h$e;->flag_qatar:I

    return p0

    .line 763
    :pswitch_3d
    sget p0, Lcom/hbb20/h$e;->flag_paraguay:I

    return p0

    .line 761
    :pswitch_3e
    sget p0, Lcom/hbb20/h$e;->flag_palau:I

    return p0

    .line 759
    :pswitch_3f
    sget p0, Lcom/hbb20/h$e;->flag_portugal:I

    return p0

    .line 757
    :pswitch_40
    sget p0, Lcom/hbb20/h$e;->flag_palestine:I

    return p0

    .line 755
    :pswitch_41
    sget p0, Lcom/hbb20/h$e;->flag_puerto_rico:I

    return p0

    .line 753
    :pswitch_42
    sget p0, Lcom/hbb20/h$e;->flag_pitcairn_islands:I

    return p0

    .line 751
    :pswitch_43
    sget p0, Lcom/hbb20/h$e;->flag_saint_pierre:I

    return p0

    .line 749
    :pswitch_44
    sget p0, Lcom/hbb20/h$e;->flag_poland:I

    return p0

    .line 747
    :pswitch_45
    sget p0, Lcom/hbb20/h$e;->flag_pakistan:I

    return p0

    .line 745
    :pswitch_46
    sget p0, Lcom/hbb20/h$e;->flag_philippines:I

    return p0

    .line 743
    :pswitch_47
    sget p0, Lcom/hbb20/h$e;->flag_papua_new_guinea:I

    return p0

    .line 741
    :pswitch_48
    sget p0, Lcom/hbb20/h$e;->flag_french_polynesia:I

    return p0

    .line 739
    :pswitch_49
    sget p0, Lcom/hbb20/h$e;->flag_peru:I

    return p0

    .line 737
    :pswitch_4a
    sget p0, Lcom/hbb20/h$e;->flag_panama:I

    return p0

    .line 735
    :pswitch_4b
    sget p0, Lcom/hbb20/h$e;->flag_oman:I

    return p0

    .line 733
    :pswitch_4c
    sget p0, Lcom/hbb20/h$e;->flag_new_zealand:I

    return p0

    .line 731
    :pswitch_4d
    sget p0, Lcom/hbb20/h$e;->flag_niue:I

    return p0

    .line 729
    :pswitch_4e
    sget p0, Lcom/hbb20/h$e;->flag_nauru:I

    return p0

    .line 727
    :pswitch_4f
    sget p0, Lcom/hbb20/h$e;->flag_nepal:I

    return p0

    .line 725
    :pswitch_50
    sget p0, Lcom/hbb20/h$e;->flag_norway:I

    return p0

    .line 723
    :pswitch_51
    sget p0, Lcom/hbb20/h$e;->flag_netherlands:I

    return p0

    .line 721
    :pswitch_52
    sget p0, Lcom/hbb20/h$e;->flag_nicaragua:I

    return p0

    .line 719
    :pswitch_53
    sget p0, Lcom/hbb20/h$e;->flag_nigeria:I

    return p0

    .line 717
    :pswitch_54
    sget p0, Lcom/hbb20/h$e;->flag_norfolk_island:I

    return p0

    .line 715
    :pswitch_55
    sget p0, Lcom/hbb20/h$e;->flag_niger:I

    return p0

    .line 713
    :pswitch_56
    sget p0, Lcom/hbb20/h$e;->flag_new_caledonia:I

    return p0

    .line 711
    :pswitch_57
    sget p0, Lcom/hbb20/h$e;->flag_namibia:I

    return p0

    .line 709
    :pswitch_58
    sget p0, Lcom/hbb20/h$e;->flag_mozambique:I

    return p0

    .line 707
    :pswitch_59
    sget p0, Lcom/hbb20/h$e;->flag_malaysia:I

    return p0

    .line 705
    :pswitch_5a
    sget p0, Lcom/hbb20/h$e;->flag_mexico:I

    return p0

    .line 703
    :pswitch_5b
    sget p0, Lcom/hbb20/h$e;->flag_malawi:I

    return p0

    .line 701
    :pswitch_5c
    sget p0, Lcom/hbb20/h$e;->flag_maldives:I

    return p0

    .line 699
    :pswitch_5d
    sget p0, Lcom/hbb20/h$e;->flag_mauritius:I

    return p0

    .line 697
    :pswitch_5e
    sget p0, Lcom/hbb20/h$e;->flag_malta:I

    return p0

    .line 695
    :pswitch_5f
    sget p0, Lcom/hbb20/h$e;->flag_montserrat:I

    return p0

    .line 693
    :pswitch_60
    sget p0, Lcom/hbb20/h$e;->flag_mauritania:I

    return p0

    .line 691
    :pswitch_61
    sget p0, Lcom/hbb20/h$e;->flag_martinique:I

    return p0

    .line 689
    :pswitch_62
    sget p0, Lcom/hbb20/h$e;->flag_northern_mariana_islands:I

    return p0

    .line 687
    :pswitch_63
    sget p0, Lcom/hbb20/h$e;->flag_macao:I

    return p0

    .line 685
    :pswitch_64
    sget p0, Lcom/hbb20/h$e;->flag_mongolia:I

    return p0

    .line 683
    :pswitch_65
    sget p0, Lcom/hbb20/h$e;->flag_myanmar:I

    return p0

    .line 681
    :pswitch_66
    sget p0, Lcom/hbb20/h$e;->flag_mali:I

    return p0

    .line 679
    :pswitch_67
    sget p0, Lcom/hbb20/h$e;->flag_macedonia:I

    return p0

    .line 677
    :pswitch_68
    sget p0, Lcom/hbb20/h$e;->flag_marshall_islands:I

    return p0

    .line 675
    :pswitch_69
    sget p0, Lcom/hbb20/h$e;->flag_madagascar:I

    return p0

    .line 673
    :pswitch_6a
    sget p0, Lcom/hbb20/h$e;->flag_saint_martin:I

    return p0

    .line 671
    :pswitch_6b
    sget p0, Lcom/hbb20/h$e;->flag_of_montenegro:I

    return p0

    .line 669
    :pswitch_6c
    sget p0, Lcom/hbb20/h$e;->flag_moldova:I

    return p0

    .line 667
    :pswitch_6d
    sget p0, Lcom/hbb20/h$e;->flag_monaco:I

    return p0

    .line 665
    :pswitch_6e
    sget p0, Lcom/hbb20/h$e;->flag_morocco:I

    return p0

    .line 663
    :pswitch_6f
    sget p0, Lcom/hbb20/h$e;->flag_libya:I

    return p0

    .line 661
    :pswitch_70
    sget p0, Lcom/hbb20/h$e;->flag_latvia:I

    return p0

    .line 659
    :pswitch_71
    sget p0, Lcom/hbb20/h$e;->flag_luxembourg:I

    return p0

    .line 657
    :pswitch_72
    sget p0, Lcom/hbb20/h$e;->flag_lithuania:I

    return p0

    .line 655
    :pswitch_73
    sget p0, Lcom/hbb20/h$e;->flag_lesotho:I

    return p0

    .line 653
    :pswitch_74
    sget p0, Lcom/hbb20/h$e;->flag_liberia:I

    return p0

    .line 651
    :pswitch_75
    sget p0, Lcom/hbb20/h$e;->flag_sri_lanka:I

    return p0

    .line 649
    :pswitch_76
    sget p0, Lcom/hbb20/h$e;->flag_liechtenstein:I

    return p0

    .line 647
    :pswitch_77
    sget p0, Lcom/hbb20/h$e;->flag_saint_lucia:I

    return p0

    .line 645
    :pswitch_78
    sget p0, Lcom/hbb20/h$e;->flag_lebanon:I

    return p0

    .line 643
    :pswitch_79
    sget p0, Lcom/hbb20/h$e;->flag_laos:I

    return p0

    .line 641
    :pswitch_7a
    sget p0, Lcom/hbb20/h$e;->flag_kazakhstan:I

    return p0

    .line 639
    :pswitch_7b
    sget p0, Lcom/hbb20/h$e;->flag_cayman_islands:I

    return p0

    .line 637
    :pswitch_7c
    sget p0, Lcom/hbb20/h$e;->flag_kuwait:I

    return p0

    .line 635
    :pswitch_7d
    sget p0, Lcom/hbb20/h$e;->flag_south_korea:I

    return p0

    .line 633
    :pswitch_7e
    sget p0, Lcom/hbb20/h$e;->flag_north_korea:I

    return p0

    .line 631
    :pswitch_7f
    sget p0, Lcom/hbb20/h$e;->flag_saint_kitts_and_nevis:I

    return p0

    .line 629
    :pswitch_80
    sget p0, Lcom/hbb20/h$e;->flag_comoros:I

    return p0

    .line 627
    :pswitch_81
    sget p0, Lcom/hbb20/h$e;->flag_kiribati:I

    return p0

    .line 625
    :pswitch_82
    sget p0, Lcom/hbb20/h$e;->flag_cambodia:I

    return p0

    .line 623
    :pswitch_83
    sget p0, Lcom/hbb20/h$e;->flag_kyrgyzstan:I

    return p0

    .line 621
    :pswitch_84
    sget p0, Lcom/hbb20/h$e;->flag_kenya:I

    return p0

    .line 619
    :pswitch_85
    sget p0, Lcom/hbb20/h$e;->flag_japan:I

    return p0

    .line 617
    :pswitch_86
    sget p0, Lcom/hbb20/h$e;->flag_jordan:I

    return p0

    .line 615
    :pswitch_87
    sget p0, Lcom/hbb20/h$e;->flag_jamaica:I

    return p0

    .line 613
    :pswitch_88
    sget p0, Lcom/hbb20/h$e;->flag_jersey:I

    return p0

    .line 611
    :pswitch_89
    sget p0, Lcom/hbb20/h$e;->flag_italy:I

    return p0

    .line 601
    :pswitch_8a
    sget p0, Lcom/hbb20/h$e;->flag_iceland:I

    return p0

    .line 609
    :pswitch_8b
    sget p0, Lcom/hbb20/h$e;->flag_iran:I

    return p0

    .line 607
    :pswitch_8c
    sget p0, Lcom/hbb20/h$e;->flag_iraq_new:I

    return p0

    .line 605
    :pswitch_8d
    sget p0, Lcom/hbb20/h$e;->flag_british_indian_ocean_territory:I

    return p0

    .line 603
    :pswitch_8e
    sget p0, Lcom/hbb20/h$e;->flag_india:I

    return p0

    .line 599
    :pswitch_8f
    sget p0, Lcom/hbb20/h$e;->flag_isleof_man:I

    return p0

    .line 597
    :pswitch_90
    sget p0, Lcom/hbb20/h$e;->flag_israel:I

    return p0

    .line 595
    :pswitch_91
    sget p0, Lcom/hbb20/h$e;->flag_ireland:I

    return p0

    .line 593
    :pswitch_92
    sget p0, Lcom/hbb20/h$e;->flag_indonesia:I

    return p0

    .line 591
    :pswitch_93
    sget p0, Lcom/hbb20/h$e;->flag_hungary:I

    return p0

    .line 589
    :pswitch_94
    sget p0, Lcom/hbb20/h$e;->flag_haiti:I

    return p0

    .line 587
    :pswitch_95
    sget p0, Lcom/hbb20/h$e;->flag_croatia:I

    return p0

    .line 585
    :pswitch_96
    sget p0, Lcom/hbb20/h$e;->flag_honduras:I

    return p0

    .line 583
    :pswitch_97
    sget p0, Lcom/hbb20/h$e;->flag_hong_kong:I

    return p0

    .line 581
    :pswitch_98
    sget p0, Lcom/hbb20/h$e;->flag_guyana:I

    return p0

    .line 579
    :pswitch_99
    sget p0, Lcom/hbb20/h$e;->flag_guinea_bissau:I

    return p0

    .line 577
    :pswitch_9a
    sget p0, Lcom/hbb20/h$e;->flag_guam:I

    return p0

    .line 575
    :pswitch_9b
    sget p0, Lcom/hbb20/h$e;->flag_guatemala:I

    return p0

    .line 573
    :pswitch_9c
    sget p0, Lcom/hbb20/h$e;->flag_greece:I

    return p0

    .line 571
    :pswitch_9d
    sget p0, Lcom/hbb20/h$e;->flag_equatorial_guinea:I

    return p0

    .line 569
    :pswitch_9e
    sget p0, Lcom/hbb20/h$e;->flag_guadeloupe:I

    return p0

    .line 567
    :pswitch_9f
    sget p0, Lcom/hbb20/h$e;->flag_guinea:I

    return p0

    .line 565
    :pswitch_a0
    sget p0, Lcom/hbb20/h$e;->flag_gambia:I

    return p0

    .line 563
    :pswitch_a1
    sget p0, Lcom/hbb20/h$e;->flag_greenland:I

    return p0

    .line 561
    :pswitch_a2
    sget p0, Lcom/hbb20/h$e;->flag_gibraltar:I

    return p0

    .line 559
    :pswitch_a3
    sget p0, Lcom/hbb20/h$e;->flag_ghana:I

    return p0

    .line 557
    :pswitch_a4
    sget p0, Lcom/hbb20/h$e;->flag_guernsey:I

    return p0

    .line 555
    :pswitch_a5
    sget p0, Lcom/hbb20/h$e;->flag_guyane:I

    return p0

    .line 553
    :pswitch_a6
    sget p0, Lcom/hbb20/h$e;->flag_georgia:I

    return p0

    .line 551
    :pswitch_a7
    sget p0, Lcom/hbb20/h$e;->flag_grenada:I

    return p0

    .line 549
    :pswitch_a8
    sget p0, Lcom/hbb20/h$e;->flag_united_kingdom:I

    return p0

    .line 547
    :pswitch_a9
    sget p0, Lcom/hbb20/h$e;->flag_gabon:I

    return p0

    .line 545
    :pswitch_aa
    sget p0, Lcom/hbb20/h$e;->flag_france:I

    return p0

    .line 543
    :pswitch_ab
    sget p0, Lcom/hbb20/h$e;->flag_faroe_islands:I

    return p0

    .line 541
    :pswitch_ac
    sget p0, Lcom/hbb20/h$e;->flag_micronesia:I

    return p0

    .line 539
    :pswitch_ad
    sget p0, Lcom/hbb20/h$e;->flag_falkland_islands:I

    return p0

    .line 537
    :pswitch_ae
    sget p0, Lcom/hbb20/h$e;->flag_fiji:I

    return p0

    .line 535
    :pswitch_af
    sget p0, Lcom/hbb20/h$e;->flag_finland:I

    return p0

    .line 533
    :pswitch_b0
    sget p0, Lcom/hbb20/h$e;->flag_ethiopia:I

    return p0

    .line 531
    :pswitch_b1
    sget p0, Lcom/hbb20/h$e;->flag_spain:I

    return p0

    .line 529
    :pswitch_b2
    sget p0, Lcom/hbb20/h$e;->flag_eritrea:I

    return p0

    .line 527
    :pswitch_b3
    sget p0, Lcom/hbb20/h$e;->flag_egypt:I

    return p0

    .line 525
    :pswitch_b4
    sget p0, Lcom/hbb20/h$e;->flag_estonia:I

    return p0

    .line 523
    :pswitch_b5
    sget p0, Lcom/hbb20/h$e;->flag_ecuador:I

    return p0

    .line 521
    :pswitch_b6
    sget p0, Lcom/hbb20/h$e;->flag_algeria:I

    return p0

    .line 519
    :pswitch_b7
    sget p0, Lcom/hbb20/h$e;->flag_dominican_republic:I

    return p0

    .line 517
    :pswitch_b8
    sget p0, Lcom/hbb20/h$e;->flag_dominica:I

    return p0

    .line 515
    :pswitch_b9
    sget p0, Lcom/hbb20/h$e;->flag_denmark:I

    return p0

    .line 513
    :pswitch_ba
    sget p0, Lcom/hbb20/h$e;->flag_djibouti:I

    return p0

    .line 511
    :pswitch_bb
    sget p0, Lcom/hbb20/h$e;->flag_germany:I

    return p0

    .line 509
    :pswitch_bc
    sget p0, Lcom/hbb20/h$e;->flag_czech_republic:I

    return p0

    .line 507
    :pswitch_bd
    sget p0, Lcom/hbb20/h$e;->flag_cyprus:I

    return p0

    .line 505
    :pswitch_be
    sget p0, Lcom/hbb20/h$e;->flag_christmas_island:I

    return p0

    .line 503
    :pswitch_bf
    sget p0, Lcom/hbb20/h$e;->flag_curacao:I

    return p0

    .line 501
    :pswitch_c0
    sget p0, Lcom/hbb20/h$e;->flag_cape_verde:I

    return p0

    .line 499
    :pswitch_c1
    sget p0, Lcom/hbb20/h$e;->flag_cuba:I

    return p0

    .line 497
    :pswitch_c2
    sget p0, Lcom/hbb20/h$e;->flag_costa_rica:I

    return p0

    .line 495
    :pswitch_c3
    sget p0, Lcom/hbb20/h$e;->flag_colombia:I

    return p0

    .line 493
    :pswitch_c4
    sget p0, Lcom/hbb20/h$e;->flag_china:I

    return p0

    .line 491
    :pswitch_c5
    sget p0, Lcom/hbb20/h$e;->flag_cameroon:I

    return p0

    .line 489
    :pswitch_c6
    sget p0, Lcom/hbb20/h$e;->flag_chile:I

    return p0

    .line 487
    :pswitch_c7
    sget p0, Lcom/hbb20/h$e;->flag_cook_islands:I

    return p0

    .line 485
    :pswitch_c8
    sget p0, Lcom/hbb20/h$e;->flag_cote_divoire:I

    return p0

    .line 483
    :pswitch_c9
    sget p0, Lcom/hbb20/h$e;->flag_switzerland:I

    return p0

    .line 481
    :pswitch_ca
    sget p0, Lcom/hbb20/h$e;->flag_republic_of_the_congo:I

    return p0

    .line 479
    :pswitch_cb
    sget p0, Lcom/hbb20/h$e;->flag_central_african_republic:I

    return p0

    .line 477
    :pswitch_cc
    sget p0, Lcom/hbb20/h$e;->flag_democratic_republic_of_the_congo:I

    return p0

    .line 475
    :pswitch_cd
    sget p0, Lcom/hbb20/h$e;->flag_cocos:I

    return p0

    .line 473
    :pswitch_ce
    sget p0, Lcom/hbb20/h$e;->flag_canada:I

    return p0

    .line 471
    :pswitch_cf
    sget p0, Lcom/hbb20/h$e;->flag_belize:I

    return p0

    .line 469
    :pswitch_d0
    sget p0, Lcom/hbb20/h$e;->flag_belarus:I

    return p0

    .line 467
    :pswitch_d1
    sget p0, Lcom/hbb20/h$e;->flag_botswana:I

    return p0

    .line 465
    :pswitch_d2
    sget p0, Lcom/hbb20/h$e;->flag_bhutan:I

    return p0

    .line 463
    :pswitch_d3
    sget p0, Lcom/hbb20/h$e;->flag_bahamas:I

    return p0

    .line 461
    :pswitch_d4
    sget p0, Lcom/hbb20/h$e;->flag_brazil:I

    return p0

    .line 459
    :pswitch_d5
    sget p0, Lcom/hbb20/h$e;->flag_bolivia:I

    return p0

    .line 457
    :pswitch_d6
    sget p0, Lcom/hbb20/h$e;->flag_brunei:I

    return p0

    .line 455
    :pswitch_d7
    sget p0, Lcom/hbb20/h$e;->flag_bermuda:I

    return p0

    .line 453
    :pswitch_d8
    sget p0, Lcom/hbb20/h$e;->flag_saint_barthelemy:I

    return p0

    .line 451
    :pswitch_d9
    sget p0, Lcom/hbb20/h$e;->flag_benin:I

    return p0

    .line 449
    :pswitch_da
    sget p0, Lcom/hbb20/h$e;->flag_burundi:I

    return p0

    .line 447
    :pswitch_db
    sget p0, Lcom/hbb20/h$e;->flag_bahrain:I

    return p0

    .line 445
    :pswitch_dc
    sget p0, Lcom/hbb20/h$e;->flag_bulgaria:I

    return p0

    .line 443
    :pswitch_dd
    sget p0, Lcom/hbb20/h$e;->flag_burkina_faso:I

    return p0

    .line 441
    :pswitch_de
    sget p0, Lcom/hbb20/h$e;->flag_belgium:I

    return p0

    .line 439
    :pswitch_df
    sget p0, Lcom/hbb20/h$e;->flag_bangladesh:I

    return p0

    .line 437
    :pswitch_e0
    sget p0, Lcom/hbb20/h$e;->flag_barbados:I

    return p0

    .line 435
    :pswitch_e1
    sget p0, Lcom/hbb20/h$e;->flag_bosnia:I

    return p0

    .line 433
    :pswitch_e2
    sget p0, Lcom/hbb20/h$e;->flag_azerbaijan:I

    return p0

    .line 431
    :pswitch_e3
    sget p0, Lcom/hbb20/h$e;->flag_aland:I

    return p0

    .line 429
    :pswitch_e4
    sget p0, Lcom/hbb20/h$e;->flag_aruba:I

    return p0

    .line 427
    :pswitch_e5
    sget p0, Lcom/hbb20/h$e;->flag_australia:I

    return p0

    .line 425
    :pswitch_e6
    sget p0, Lcom/hbb20/h$e;->flag_austria:I

    return p0

    .line 423
    :pswitch_e7
    sget p0, Lcom/hbb20/h$e;->flag_american_samoa:I

    return p0

    .line 421
    :pswitch_e8
    sget p0, Lcom/hbb20/h$e;->flag_argentina:I

    return p0

    .line 419
    :pswitch_e9
    sget p0, Lcom/hbb20/h$e;->flag_antarctica:I

    return p0

    .line 417
    :pswitch_ea
    sget p0, Lcom/hbb20/h$e;->flag_angola:I

    return p0

    .line 415
    :pswitch_eb
    sget p0, Lcom/hbb20/h$e;->flag_armenia:I

    return p0

    .line 413
    :pswitch_ec
    sget p0, Lcom/hbb20/h$e;->flag_albania:I

    return p0

    .line 411
    :pswitch_ed
    sget p0, Lcom/hbb20/h$e;->flag_anguilla:I

    return p0

    .line 409
    :pswitch_ee
    sget p0, Lcom/hbb20/h$e;->flag_antigua_and_barbuda:I

    return p0

    .line 407
    :pswitch_ef
    sget p0, Lcom/hbb20/h$e;->flag_afghanistan:I

    return p0

    .line 405
    :pswitch_f0
    sget p0, Lcom/hbb20/h$e;->flag_uae:I

    return p0

    .line 403
    :pswitch_f1
    sget p0, Lcom/hbb20/h$e;->flag_andorra:I

    return p0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_f1
        0xc24 -> :sswitch_f0
        0xc25 -> :sswitch_ef
        0xc26 -> :sswitch_ee
        0xc28 -> :sswitch_ed
        0xc2b -> :sswitch_ec
        0xc2c -> :sswitch_eb
        0xc2e -> :sswitch_ea
        0xc30 -> :sswitch_e9
        0xc31 -> :sswitch_e8
        0xc32 -> :sswitch_e7
        0xc33 -> :sswitch_e6
        0xc34 -> :sswitch_e5
        0xc36 -> :sswitch_e4
        0xc37 -> :sswitch_e3
        0xc39 -> :sswitch_e2
        0xc3f -> :sswitch_e1
        0xc40 -> :sswitch_e0
        0xc42 -> :sswitch_df
        0xc43 -> :sswitch_de
        0xc44 -> :sswitch_dd
        0xc45 -> :sswitch_dc
        0xc46 -> :sswitch_db
        0xc47 -> :sswitch_da
        0xc48 -> :sswitch_d9
        0xc4a -> :sswitch_d8
        0xc4b -> :sswitch_d7
        0xc4c -> :sswitch_d6
        0xc4d -> :sswitch_d5
        0xc50 -> :sswitch_d4
        0xc51 -> :sswitch_d3
        0xc52 -> :sswitch_d2
        0xc55 -> :sswitch_d1
        0xc57 -> :sswitch_d0
        0xc58 -> :sswitch_cf
        0xc5e -> :sswitch_ce
        0xc60 -> :sswitch_cd
        0xc61 -> :sswitch_cc
        0xc63 -> :sswitch_cb
        0xc64 -> :sswitch_ca
        0xc65 -> :sswitch_c9
        0xc66 -> :sswitch_c8
        0xc68 -> :sswitch_c7
        0xc69 -> :sswitch_c6
        0xc6a -> :sswitch_c5
        0xc6b -> :sswitch_c4
        0xc6c -> :sswitch_c3
        0xc6f -> :sswitch_c2
        0xc72 -> :sswitch_c1
        0xc73 -> :sswitch_c0
        0xc74 -> :sswitch_bf
        0xc75 -> :sswitch_be
        0xc76 -> :sswitch_bd
        0xc77 -> :sswitch_bc
        0xc81 -> :sswitch_bb
        0xc86 -> :sswitch_ba
        0xc87 -> :sswitch_b9
        0xc89 -> :sswitch_b8
        0xc8b -> :sswitch_b7
        0xc96 -> :sswitch_b6
        0xc9e -> :sswitch_b5
        0xca0 -> :sswitch_b4
        0xca2 -> :sswitch_b3
        0xcad -> :sswitch_b2
        0xcae -> :sswitch_b1
        0xcaf -> :sswitch_b0
        0xcc3 -> :sswitch_af
        0xcc4 -> :sswitch_ae
        0xcc5 -> :sswitch_ad
        0xcc7 -> :sswitch_ac
        0xcc9 -> :sswitch_ab
        0xccc -> :sswitch_aa
        0xcda -> :sswitch_a9
        0xcdb -> :sswitch_a8
        0xcdd -> :sswitch_a7
        0xcde -> :sswitch_a6
        0xcdf -> :sswitch_a5
        0xce0 -> :sswitch_a4
        0xce1 -> :sswitch_a3
        0xce2 -> :sswitch_a2
        0xce5 -> :sswitch_a1
        0xce6 -> :sswitch_a0
        0xce7 -> :sswitch_9f
        0xce9 -> :sswitch_9e
        0xcea -> :sswitch_9d
        0xceb -> :sswitch_9c
        0xced -> :sswitch_9b
        0xcee -> :sswitch_9a
        0xcf0 -> :sswitch_99
        0xcf2 -> :sswitch_98
        0xd03 -> :sswitch_97
        0xd06 -> :sswitch_96
        0xd0a -> :sswitch_95
        0xd0c -> :sswitch_94
        0xd0d -> :sswitch_93
        0xd1b -> :sswitch_92
        0xd1c -> :sswitch_91
        0xd23 -> :sswitch_90
        0xd24 -> :sswitch_8f
        0xd25 -> :sswitch_8e
        0xd26 -> :sswitch_8d
        0xd28 -> :sswitch_8c
        0xd29 -> :sswitch_8b
        0xd2a -> :sswitch_8a
        0xd2b -> :sswitch_89
        0xd3b -> :sswitch_88
        0xd43 -> :sswitch_87
        0xd45 -> :sswitch_86
        0xd46 -> :sswitch_85
        0xd5a -> :sswitch_84
        0xd5c -> :sswitch_83
        0xd5d -> :sswitch_82
        0xd5e -> :sswitch_81
        0xd62 -> :sswitch_80
        0xd63 -> :sswitch_7f
        0xd65 -> :sswitch_7e
        0xd67 -> :sswitch_7d
        0xd6c -> :sswitch_7c
        0xd6e -> :sswitch_7b
        0xd6f -> :sswitch_7a
        0xd75 -> :sswitch_79
        0xd76 -> :sswitch_78
        0xd77 -> :sswitch_77
        0xd7d -> :sswitch_76
        0xd7f -> :sswitch_75
        0xd86 -> :sswitch_74
        0xd87 -> :sswitch_73
        0xd88 -> :sswitch_72
        0xd89 -> :sswitch_71
        0xd8a -> :sswitch_70
        0xd8d -> :sswitch_6f
        0xd94 -> :sswitch_6e
        0xd96 -> :sswitch_6d
        0xd97 -> :sswitch_6c
        0xd98 -> :sswitch_6b
        0xd99 -> :sswitch_6a
        0xd9a -> :sswitch_69
        0xd9b -> :sswitch_68
        0xd9e -> :sswitch_67
        0xd9f -> :sswitch_66
        0xda0 -> :sswitch_65
        0xda1 -> :sswitch_64
        0xda2 -> :sswitch_63
        0xda3 -> :sswitch_62
        0xda4 -> :sswitch_61
        0xda5 -> :sswitch_60
        0xda6 -> :sswitch_5f
        0xda7 -> :sswitch_5e
        0xda8 -> :sswitch_5d
        0xda9 -> :sswitch_5c
        0xdaa -> :sswitch_5b
        0xdab -> :sswitch_5a
        0xdac -> :sswitch_59
        0xdad -> :sswitch_58
        0xdb3 -> :sswitch_57
        0xdb5 -> :sswitch_56
        0xdb7 -> :sswitch_55
        0xdb8 -> :sswitch_54
        0xdb9 -> :sswitch_53
        0xdbb -> :sswitch_52
        0xdbe -> :sswitch_51
        0xdc1 -> :sswitch_50
        0xdc2 -> :sswitch_4f
        0xdc4 -> :sswitch_4e
        0xdc7 -> :sswitch_4d
        0xdcc -> :sswitch_4c
        0xdde -> :sswitch_4b
        0xdf1 -> :sswitch_4a
        0xdf5 -> :sswitch_49
        0xdf6 -> :sswitch_48
        0xdf7 -> :sswitch_47
        0xdf8 -> :sswitch_46
        0xdfb -> :sswitch_45
        0xdfc -> :sswitch_44
        0xdfd -> :sswitch_43
        0xdfe -> :sswitch_42
        0xe02 -> :sswitch_41
        0xe03 -> :sswitch_40
        0xe04 -> :sswitch_3f
        0xe07 -> :sswitch_3e
        0xe09 -> :sswitch_3d
        0xe10 -> :sswitch_3c
        0xe33 -> :sswitch_3b
        0xe3d -> :sswitch_3a
        0xe41 -> :sswitch_39
        0xe43 -> :sswitch_38
        0xe45 -> :sswitch_37
        0xe4e -> :sswitch_36
        0xe4f -> :sswitch_35
        0xe50 -> :sswitch_34
        0xe51 -> :sswitch_33
        0xe52 -> :sswitch_32
        0xe54 -> :sswitch_31
        0xe55 -> :sswitch_30
        0xe56 -> :sswitch_2f
        0xe58 -> :sswitch_2e
        0xe59 -> :sswitch_2d
        0xe5a -> :sswitch_2c
        0xe5b -> :sswitch_2b
        0xe5c -> :sswitch_2a
        0xe5f -> :sswitch_29
        0xe60 -> :sswitch_28
        0xe61 -> :sswitch_27
        0xe63 -> :sswitch_26
        0xe65 -> :sswitch_25
        0xe66 -> :sswitch_24
        0xe67 -> :sswitch_23
        0xe6f -> :sswitch_22
        0xe70 -> :sswitch_21
        0xe73 -> :sswitch_20
        0xe74 -> :sswitch_1f
        0xe76 -> :sswitch_1e
        0xe77 -> :sswitch_1d
        0xe78 -> :sswitch_1c
        0xe79 -> :sswitch_1b
        0xe7a -> :sswitch_1a
        0xe7b -> :sswitch_19
        0xe7e -> :sswitch_18
        0xe80 -> :sswitch_17
        0xe82 -> :sswitch_16
        0xe83 -> :sswitch_15
        0xe86 -> :sswitch_14
        0xe8c -> :sswitch_13
        0xe92 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method private static b(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$e;",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/a;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 202
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/a;

    .line 4689
    iget-object v1, v0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 204
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 210
    :cond_1
    invoke-static {p0, p1}, Lcom/hbb20/a;->d(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/a;

    .line 5689
    iget-object p2, p1, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 211
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Ljava/lang/String;)Lcom/hbb20/a;
    .locals 3

    .line 297
    invoke-static {}, Lcom/hbb20/a;->c()Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/a;

    .line 9681
    iget-object v2, v1, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 299
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/lang/String;
    .locals 1

    .line 162
    sget-object v0, Lcom/hbb20/a;->c:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/a;->e(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)V

    .line 165
    :cond_1
    sget-object p0, Lcom/hbb20/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/lang/String;
    .locals 1

    .line 169
    sget-object v0, Lcom/hbb20/a;->c:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/a;->e(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)V

    .line 172
    :cond_1
    sget-object p0, Lcom/hbb20/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static c()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation

    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ad"

    const-string v4, "376"

    const-string v5, "Andorra"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ae"

    const-string v4, "971"

    const-string v5, "United Arab Emirates (UAE)"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "af"

    const-string v4, "93"

    const-string v5, "Afghanistan"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ag"

    const-string v4, "1"

    const-string v5, "Antigua and Barbuda"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ai"

    const-string v5, "Anguilla"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "al"

    const-string v5, "355"

    const-string v6, "Albania"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "am"

    const-string v5, "374"

    const-string v6, "Armenia"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ao"

    const-string v5, "244"

    const-string v6, "Angola"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "aq"

    const-string v5, "672"

    const-string v6, "Antarctica"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ar"

    const-string v6, "54"

    const-string v7, "Argentina"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "as"

    const-string v6, "American Samoa"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "at"

    const-string v6, "43"

    const-string v7, "Austria"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "au"

    const-string v6, "61"

    const-string v7, "Australia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "aw"

    const-string v7, "297"

    const-string v8, "Aruba"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ax"

    const-string v7, "358"

    const-string v8, "\u00c5land Islands"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "az"

    const-string v8, "994"

    const-string v9, "Azerbaijan"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ba"

    const-string v8, "387"

    const-string v9, "Bosnia And Herzegovina"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bb"

    const-string v8, "Barbados"

    invoke-direct {v1, v3, v4, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bd"

    const-string v8, "880"

    const-string v9, "Bangladesh"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "be"

    const-string v8, "32"

    const-string v9, "Belgium"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bf"

    const-string v8, "226"

    const-string v9, "Burkina Faso"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bg"

    const-string v8, "359"

    const-string v9, "Bulgaria"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bh"

    const-string v8, "973"

    const-string v9, "Bahrain"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bi"

    const-string v8, "257"

    const-string v9, "Burundi"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bj"

    const-string v8, "229"

    const-string v9, "Benin"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bl"

    const-string v8, "590"

    const-string v9, "Saint Barth\u00e9lemy"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bm"

    const-string v9, "Bermuda"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bn"

    const-string v9, "673"

    const-string v10, "Brunei Darussalam"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bo"

    const-string v9, "591"

    const-string v10, "Bolivia, Plurinational State Of"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "br"

    const-string v9, "55"

    const-string v10, "Brazil"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bs"

    const-string v9, "Bahamas"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bt"

    const-string v9, "975"

    const-string v10, "Bhutan"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bw"

    const-string v9, "267"

    const-string v10, "Botswana"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "by"

    const-string v9, "375"

    const-string v10, "Belarus"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "bz"

    const-string v9, "501"

    const-string v10, "Belize"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ca"

    const-string v9, "Canada"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cc"

    const-string v9, "Cocos (keeling) Islands"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cd"

    const-string v9, "243"

    const-string v10, "Congo, The Democratic Republic Of The"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cf"

    const-string v9, "236"

    const-string v10, "Central African Republic"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cg"

    const-string v9, "242"

    const-string v10, "Congo"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ch"

    const-string v9, "41"

    const-string v10, "Switzerland"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ci"

    const-string v9, "225"

    const-string v10, "C\u00f4te D\'ivoire"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ck"

    const-string v9, "682"

    const-string v10, "Cook Islands"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cl"

    const-string v9, "56"

    const-string v10, "Chile"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cm"

    const-string v9, "237"

    const-string v10, "Cameroon"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cn"

    const-string v9, "86"

    const-string v10, "China"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "co"

    const-string v9, "57"

    const-string v10, "Colombia"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cr"

    const-string v9, "506"

    const-string v10, "Costa Rica"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cu"

    const-string v9, "53"

    const-string v10, "Cuba"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cv"

    const-string v9, "238"

    const-string v10, "Cape Verde"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cw"

    const-string v9, "599"

    const-string v10, "Cura\u00e7ao"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cx"

    const-string v9, "Christmas Island"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cy"

    const-string v6, "357"

    const-string v9, "Cyprus"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "cz"

    const-string v6, "420"

    const-string v9, "Czech Republic"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "de"

    const-string v6, "49"

    const-string v9, "Germany"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "dj"

    const-string v6, "253"

    const-string v9, "Djibouti"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "dk"

    const-string v6, "45"

    const-string v9, "Denmark"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "dm"

    const-string v6, "Dominica"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "do"

    const-string v6, "Dominican Republic"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "dz"

    const-string v6, "213"

    const-string v9, "Algeria"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ec"

    const-string v6, "593"

    const-string v9, "Ecuador"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ee"

    const-string v6, "372"

    const-string v9, "Estonia"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "eg"

    const-string v6, "20"

    const-string v9, "Egypt"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "er"

    const-string v6, "291"

    const-string v9, "Eritrea"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "es"

    const-string v6, "34"

    const-string v9, "Spain"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "et"

    const-string v6, "251"

    const-string v9, "Ethiopia"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "fi"

    const-string v6, "Finland"

    invoke-direct {v1, v3, v7, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "fj"

    const-string v6, "679"

    const-string v7, "Fiji"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "fk"

    const-string v6, "500"

    const-string v7, "Falkland Islands (malvinas)"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "fm"

    const-string v6, "691"

    const-string v7, "Micronesia, Federated States Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "fo"

    const-string v6, "298"

    const-string v7, "Faroe Islands"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "fr"

    const-string v6, "33"

    const-string v7, "France"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ga"

    const-string v6, "241"

    const-string v7, "Gabon"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gb"

    const-string v6, "44"

    const-string v7, "United Kingdom"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gd"

    const-string v7, "Grenada"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ge"

    const-string v7, "995"

    const-string v9, "Georgia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gf"

    const-string v7, "594"

    const-string v9, "French Guyana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gh"

    const-string v7, "233"

    const-string v9, "Ghana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gi"

    const-string v7, "350"

    const-string v9, "Gibraltar"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gl"

    const-string v7, "299"

    const-string v9, "Greenland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gm"

    const-string v7, "220"

    const-string v9, "Gambia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gn"

    const-string v7, "224"

    const-string v9, "Guinea"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gp"

    const-string v7, "450"

    const-string v9, "Guadeloupe"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gq"

    const-string v7, "240"

    const-string v9, "Equatorial Guinea"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gr"

    const-string v7, "30"

    const-string v9, "Greece"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gt"

    const-string v7, "502"

    const-string v9, "Guatemala"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gu"

    const-string v7, "Guam"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gw"

    const-string v7, "245"

    const-string v9, "Guinea-bissau"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "gy"

    const-string v7, "592"

    const-string v9, "Guyana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "hk"

    const-string v7, "852"

    const-string v9, "Hong Kong"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "hn"

    const-string v7, "504"

    const-string v9, "Honduras"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "hr"

    const-string v7, "385"

    const-string v9, "Croatia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ht"

    const-string v7, "509"

    const-string v9, "Haiti"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "hu"

    const-string v7, "36"

    const-string v9, "Hungary"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "id"

    const-string v7, "62"

    const-string v9, "Indonesia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ie"

    const-string v7, "353"

    const-string v9, "Ireland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "il"

    const-string v7, "972"

    const-string v9, "Israel"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "im"

    const-string v7, "Isle Of Man"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "is"

    const-string v7, "354"

    const-string v9, "Iceland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "in"

    const-string v7, "91"

    const-string v9, "India"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "io"

    const-string v7, "246"

    const-string v9, "British Indian Ocean Territory"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "iq"

    const-string v7, "964"

    const-string v9, "Iraq"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ir"

    const-string v7, "98"

    const-string v9, "Iran, Islamic Republic Of"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "it"

    const-string v7, "39"

    const-string v9, "Italy"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "je"

    const-string v7, "Jersey "

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "jm"

    const-string v6, "Jamaica"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "jo"

    const-string v6, "962"

    const-string v7, "Jordan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "jp"

    const-string v6, "81"

    const-string v7, "Japan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ke"

    const-string v6, "254"

    const-string v7, "Kenya"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kg"

    const-string v6, "996"

    const-string v7, "Kyrgyzstan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kh"

    const-string v6, "855"

    const-string v7, "Cambodia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ki"

    const-string v6, "686"

    const-string v7, "Kiribati"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "km"

    const-string v6, "269"

    const-string v7, "Comoros"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kn"

    const-string v6, "Saint Kitts and Nevis"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kp"

    const-string v6, "850"

    const-string v7, "North Korea"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kr"

    const-string v6, "82"

    const-string v7, "South Korea"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kw"

    const-string v6, "965"

    const-string v7, "Kuwait"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1538
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ky"

    const-string v6, "Cayman Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "kz"

    const-string v6, "7"

    const-string v7, "Kazakhstan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "la"

    const-string v7, "856"

    const-string v9, "Lao People\'s Democratic Republic"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lb"

    const-string v7, "961"

    const-string v9, "Lebanon"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lc"

    const-string v7, "Saint Lucia"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "li"

    const-string v7, "423"

    const-string v9, "Liechtenstein"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lk"

    const-string v7, "94"

    const-string v9, "Sri Lanka"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lr"

    const-string v7, "231"

    const-string v9, "Liberia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ls"

    const-string v7, "266"

    const-string v9, "Lesotho"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lt"

    const-string v7, "370"

    const-string v9, "Lithuania"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lu"

    const-string v7, "352"

    const-string v9, "Luxembourg"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "lv"

    const-string v7, "371"

    const-string v9, "Latvia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ly"

    const-string v7, "218"

    const-string v9, "Libya"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ma"

    const-string v7, "212"

    const-string v9, "Morocco"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mc"

    const-string v7, "377"

    const-string v9, "Monaco"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "md"

    const-string v7, "373"

    const-string v9, "Moldova, Republic Of"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "me"

    const-string v7, "382"

    const-string v9, "Montenegro"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mf"

    const-string v7, "Saint Martin"

    invoke-direct {v1, v3, v8, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mg"

    const-string v7, "261"

    const-string v8, "Madagascar"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mh"

    const-string v7, "692"

    const-string v8, "Marshall Islands"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mk"

    const-string v7, "389"

    const-string v8, "Macedonia (FYROM)"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ml"

    const-string v7, "223"

    const-string v8, "Mali"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mm"

    const-string v7, "95"

    const-string v8, "Myanmar"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mn"

    const-string v7, "976"

    const-string v8, "Mongolia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mo"

    const-string v7, "853"

    const-string v8, "Macau"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mp"

    const-string v7, "Northern Mariana Islands"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mq"

    const-string v7, "596"

    const-string v8, "Martinique"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mr"

    const-string v7, "222"

    const-string v8, "Mauritania"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ms"

    const-string v7, "Montserrat"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mt"

    const-string v7, "356"

    const-string v8, "Malta"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mu"

    const-string v7, "230"

    const-string v8, "Mauritius"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mv"

    const-string v7, "960"

    const-string v8, "Maldives"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mw"

    const-string v7, "265"

    const-string v8, "Malawi"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mx"

    const-string v7, "52"

    const-string v8, "Mexico"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "my"

    const-string v7, "60"

    const-string v8, "Malaysia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "mz"

    const-string v7, "258"

    const-string v8, "Mozambique"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "na"

    const-string v7, "264"

    const-string v8, "Namibia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1575
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "nc"

    const-string v7, "687"

    const-string v8, "New Caledonia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ne"

    const-string v7, "227"

    const-string v8, "Niger"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "nf"

    const-string v7, "Norfolk Islands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ng"

    const-string v5, "234"

    const-string v7, "Nigeria"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ni"

    const-string v5, "505"

    const-string v7, "Nicaragua"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "nl"

    const-string v5, "31"

    const-string v7, "Netherlands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "no"

    const-string v5, "47"

    const-string v7, "Norway"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "np"

    const-string v5, "977"

    const-string v7, "Nepal"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "nr"

    const-string v5, "674"

    const-string v7, "Nauru"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "nu"

    const-string v5, "683"

    const-string v7, "Niue"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "nz"

    const-string v5, "64"

    const-string v7, "New Zealand"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "om"

    const-string v5, "968"

    const-string v7, "Oman"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pa"

    const-string v5, "507"

    const-string v7, "Panama"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pe"

    const-string v5, "51"

    const-string v7, "Peru"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pf"

    const-string v5, "689"

    const-string v7, "French Polynesia"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pg"

    const-string v5, "675"

    const-string v7, "Papua New Guinea"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ph"

    const-string v5, "63"

    const-string v7, "Philippines"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pk"

    const-string v5, "92"

    const-string v7, "Pakistan"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pl"

    const-string v5, "48"

    const-string v7, "Poland"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pm"

    const-string v5, "508"

    const-string v7, "Saint Pierre And Miquelon"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pn"

    const-string v5, "870"

    const-string v7, "Pitcairn Islands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pr"

    const-string v5, "Puerto Rico"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ps"

    const-string v5, "970"

    const-string v7, "Palestine"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pt"

    const-string v5, "351"

    const-string v7, "Portugal"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "pw"

    const-string v5, "680"

    const-string v7, "Palau"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "py"

    const-string v5, "595"

    const-string v7, "Paraguay"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "qa"

    const-string v5, "974"

    const-string v7, "Qatar"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "re"

    const-string v5, "262"

    const-string v7, "R\u00e9union"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ro"

    const-string v7, "40"

    const-string v8, "Romania"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "rs"

    const-string v7, "381"

    const-string v8, "Serbia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ru"

    const-string v7, "Russian Federation"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "rw"

    const-string v6, "250"

    const-string v7, "Rwanda"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sa"

    const-string v6, "966"

    const-string v7, "Saudi Arabia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sb"

    const-string v6, "677"

    const-string v7, "Solomon Islands"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sc"

    const-string v6, "248"

    const-string v7, "Seychelles"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sd"

    const-string v6, "249"

    const-string v7, "Sudan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "se"

    const-string v6, "46"

    const-string v7, "Sweden"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sg"

    const-string v6, "65"

    const-string v7, "Singapore"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sh"

    const-string v6, "290"

    const-string v7, "Saint Helena, Ascension And Tristan Da Cunha"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "si"

    const-string v6, "386"

    const-string v7, "Slovenia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sk"

    const-string v6, "421"

    const-string v7, "Slovakia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sl"

    const-string v6, "232"

    const-string v7, "Sierra Leone"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sm"

    const-string v6, "378"

    const-string v7, "San Marino"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sn"

    const-string v6, "221"

    const-string v7, "Senegal"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "so"

    const-string v6, "252"

    const-string v7, "Somalia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sr"

    const-string v6, "597"

    const-string v7, "Suriname"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ss"

    const-string v6, "211"

    const-string v7, "South Sudan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "st"

    const-string v6, "239"

    const-string v7, "Sao Tome And Principe"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sv"

    const-string v6, "503"

    const-string v7, "El Salvador"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sx"

    const-string v6, "Sint Maarten"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1625
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sy"

    const-string v6, "963"

    const-string v7, "Syrian Arab Republic"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "sz"

    const-string v6, "268"

    const-string v7, "Swaziland"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tc"

    const-string v6, "Turks and Caicos Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "td"

    const-string v6, "235"

    const-string v7, "Chad"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tg"

    const-string v6, "228"

    const-string v7, "Togo"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "th"

    const-string v6, "66"

    const-string v7, "Thailand"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tj"

    const-string v6, "992"

    const-string v7, "Tajikistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tk"

    const-string v6, "690"

    const-string v7, "Tokelau"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tl"

    const-string v6, "670"

    const-string v7, "Timor-leste"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tm"

    const-string v6, "993"

    const-string v7, "Turkmenistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tn"

    const-string v6, "216"

    const-string v7, "Tunisia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "to"

    const-string v6, "676"

    const-string v7, "Tonga"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tr"

    const-string v6, "90"

    const-string v7, "Turkey"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tt"

    const-string v6, "Trinidad &amp; Tobago"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tv"

    const-string v6, "688"

    const-string v7, "Tuvalu"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tw"

    const-string v6, "886"

    const-string v7, "Taiwan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "tz"

    const-string v6, "255"

    const-string v7, "Tanzania, United Republic Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ua"

    const-string v6, "380"

    const-string v7, "Ukraine"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ug"

    const-string v6, "256"

    const-string v7, "Uganda"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "us"

    const-string v6, "United States"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "uy"

    const-string v6, "598"

    const-string v7, "Uruguay"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "uz"

    const-string v6, "998"

    const-string v7, "Uzbekistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "va"

    const-string v6, "379"

    const-string v7, "Holy See (vatican City State)"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "vc"

    const-string v6, "Saint Vincent &amp; The Grenadines"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ve"

    const-string v6, "58"

    const-string v7, "Venezuela, Bolivarian Republic Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "vg"

    const-string v6, "British Virgin Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "vi"

    const-string v6, "US Virgin Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1652
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "vn"

    const-string v4, "84"

    const-string v6, "Vietnam"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "vu"

    const-string v4, "678"

    const-string v6, "Vanuatu"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "wf"

    const-string v4, "681"

    const-string v6, "Wallis And Futuna"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ws"

    const-string v4, "685"

    const-string v6, "Samoa"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "xk"

    const-string v4, "383"

    const-string v6, "Kosovo"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "ye"

    const-string v4, "967"

    const-string v6, "Yemen"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "yt"

    const-string v4, "Mayotte"

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "za"

    const-string v4, "27"

    const-string v5, "South Africa"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "zm"

    const-string v4, "260"

    const-string v5, "Zambia"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1661
    new-instance v1, Lcom/hbb20/a;

    sget v2, Lcom/hbb20/a;->a:I

    const-string v3, "zw"

    const-string v4, "263"

    const-string v5, "Zimbabwe"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/hbb20/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$e;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation

    .line 1413
    sget-object v0, Lcom/hbb20/a;->c:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/hbb20/a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1414
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/a;->e(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)V

    .line 1416
    :cond_1
    sget-object p0, Lcom/hbb20/a;->g:Ljava/util/List;

    return-object p0
.end method

.method private static e(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)V
    .locals 8

    const-string v0, ""

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ccp_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker$e;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "raw"

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-virtual {v4, v5, v6, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 99
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string v3, "UTF-8"

    .line 102
    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq p0, v5, :cond_5

    .line 105
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-eq p0, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "country"

    .line 110
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_1

    .line 111
    new-instance p0, Lcom/hbb20/a;

    invoke-direct {p0}, Lcom/hbb20/a;-><init>()V

    const-string v5, "name_code"

    .line 112
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2685
    iput-object v5, p0, Lcom/hbb20/a;->h:Ljava/lang/String;

    const-string v5, "phone_code"

    .line 113
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2693
    iput-object v5, p0, Lcom/hbb20/a;->i:Ljava/lang/String;

    const-string v5, "english_name"

    .line 114
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3670
    iput-object v5, p0, Lcom/hbb20/a;->k:Ljava/lang/String;

    const-string v5, "name"

    .line 115
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3701
    iput-object v5, p0, Lcom/hbb20/a;->j:Ljava/lang/String;

    .line 116
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "ccp_dialog_title"

    .line 117
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "translation"

    if-eqz p0, :cond_2

    .line 118
    :try_start_2
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_1

    :cond_2
    const-string p0, "ccp_dialog_search_hint_message"

    .line 119
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 120
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    goto :goto_1

    :cond_3
    const-string p0, "ccp_dialog_no_result_ack_message"

    .line 121
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 122
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    .line 126
    :cond_4
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 128
    :cond_5
    sput-object p1, Lcom/hbb20/a;->c:Lcom/hbb20/CountryCodePicker$e;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_9

    :catch_3
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 134
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 132
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 130
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    .line 141
    sget-object p0, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    sput-object p0, Lcom/hbb20/a;->c:Lcom/hbb20/CountryCodePicker$e;

    .line 142
    invoke-static {}, Lcom/hbb20/a;->c()Ljava/util/List;

    move-result-object v1

    .line 145
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_6

    :cond_7
    const-string v0, "Select a country"

    :goto_6
    sput-object v0, Lcom/hbb20/a;->d:Ljava/lang/String;

    .line 146
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    goto :goto_7

    :cond_8
    const-string v3, "Search..."

    :goto_7
    sput-object v3, Lcom/hbb20/a;->e:Ljava/lang/String;

    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9

    goto :goto_8

    :cond_9
    const-string v4, "Results not found"

    :goto_8
    sput-object v4, Lcom/hbb20/a;->f:Ljava/lang/String;

    .line 151
    sput-object v1, Lcom/hbb20/a;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 137
    :goto_9
    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1674
    iget v0, p0, Lcom/hbb20/a;->l:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 1675
    invoke-static {p0}, Lcom/hbb20/a;->b(Lcom/hbb20/a;)I

    move-result v0

    iput v0, p0, Lcom/hbb20/a;->l:I

    .line 1677
    :cond_0
    iget v0, p0, Lcom/hbb20/a;->l:I

    return v0
.end method

.method public final b()V
    .locals 3

    const-string v0, ":"

    .line 1706
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Country->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hbb20/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hbb20/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method final c(Ljava/lang/String;)Z
    .locals 2

    .line 1723
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 9697
    iget-object v0, p0, Lcom/hbb20/a;->j:Ljava/lang/String;

    const-string v1, "Name"

    .line 1724
    invoke-static {v1, v0, p1}, Lcom/hbb20/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10681
    iget-object v0, p0, Lcom/hbb20/a;->h:Ljava/lang/String;

    const-string v1, "NameCode"

    .line 1725
    invoke-static {v1, v0, p1}, Lcom/hbb20/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10689
    iget-object v0, p0, Lcom/hbb20/a;->i:Ljava/lang/String;

    const-string v1, "PhoneCode"

    .line 1726
    invoke-static {v1, v0, p1}, Lcom/hbb20/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11666
    iget-object v0, p0, Lcom/hbb20/a;->k:Ljava/lang/String;

    const-string v1, "EnglishName"

    .line 1727
    invoke-static {v1, v0, p1}, Lcom/hbb20/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 24
    check-cast p1, Lcom/hbb20/a;

    .line 11747
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 12697
    iget-object v1, p0, Lcom/hbb20/a;->j:Ljava/lang/String;

    .line 13697
    iget-object p1, p1, Lcom/hbb20/a;->j:Ljava/lang/String;

    .line 11747
    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
