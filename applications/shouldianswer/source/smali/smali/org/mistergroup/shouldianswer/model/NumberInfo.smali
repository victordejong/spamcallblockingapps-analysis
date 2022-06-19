.class public final Lorg/mistergroup/shouldianswer/model/NumberInfo;
.super Ljava/lang/Object;
.source "NumberInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/NumberInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lorg/mistergroup/shouldianswer/model/NumberInfo$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/Boolean;

.field private E:Lorg/mistergroup/shouldianswer/model/NumberCaption;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

.field private I:Z

.field private J:Lorg/mistergroup/shouldianswer/model/h;

.field private K:Lorg/mistergroup/shouldianswer/model/ac;

.field public a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/mistergroup/shouldianswer/model/k;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lorg/mistergroup/shouldianswer/model/ag;

.field private o:Lorg/mistergroup/shouldianswer/model/ag;

.field private p:Lorg/mistergroup/shouldianswer/model/ag;

.field private q:Lorg/mistergroup/shouldianswer/model/h;

.field private r:Lorg/mistergroup/shouldianswer/model/h;

.field private s:Lorg/mistergroup/shouldianswer/model/m;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Lorg/mistergroup/shouldianswer/model/NumberReport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo$a;

    .line 919
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo$b;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    .line 45
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    .line 47
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    .line 48
    sget-object v0, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 49
    sget-object v0, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 51
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>()V

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f:Z

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->i:Z

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j:Z

    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k:Z

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    .line 896
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    .line 897
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    .line 898
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    .line 899
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/h;->values()[Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 900
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/h;->values()[Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 901
    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/model/k$a;->a(I)Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    .line 902
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    .line 903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t:I

    .line 904
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->u:Z

    .line 905
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    .line 906
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w:I

    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->x:I

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->y:I

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    .line 911
    const-class v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 912
    const-class v0, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->E:Lorg/mistergroup/shouldianswer/model/NumberCaption;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V
    .locals 1

    const-string v0, "country"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callType"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>()V

    if-eqz p1, :cond_1

    .line 328
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const-string p1, "-2"

    .line 329
    :cond_2
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    .line 331
    iput-boolean p4, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    .line 332
    iput-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    .line 333
    iput-object p3, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    .line 327
    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-string p2, ""

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    return-void
.end method

.method private final v()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    .line 270
    :cond_0
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k:Z

    return v0
.end method

.method private final w()V
    .locals 5

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    .line 545
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f:Z

    .line 546
    invoke-static {p0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v()Z

    move-result v1

    .line 549
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    .line 550
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v2, v3, :cond_3

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->x()Z

    move-result v2

    if-nez v2, :cond_3

    .line 551
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    .line 553
    :cond_3
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v2, v3, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move v0, v4

    :cond_5
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f:Z

    return-void
.end method


# virtual methods
.method final synthetic a(JLkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->b:I

    sub-int/2addr p3, v2

    iput p3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;

    invoke-direct {v0, p0, p3}, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 481
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->e:J

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 483
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_2
    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 482
    sget-object p3, Lorg/mistergroup/shouldianswer/model/r;->a:Lorg/mistergroup/shouldianswer/model/r;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->d:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->e:J

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$e;->b:I

    invoke-virtual {p3, p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/model/r;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 129
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->b:I

    const-string v3, "number"

    const-string v4, "-1"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->e:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 131
    invoke-static {p0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 132
    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    .line 137
    :cond_4
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/n;->a:Lorg/mistergroup/shouldianswer/utils/n;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v7, "country"

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->d:Ljava/lang/Object;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->e:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$n;->b:I

    invoke-virtual {p1, v2, v6, v0}, Lorg/mistergroup/shouldianswer/utils/n;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    move-object v1, v0

    .line 129
    :goto_1
    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    goto :goto_3

    :cond_8
    :goto_2
    move-object v0, p0

    .line 140
    :goto_3
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    if-nez p1, :cond_a

    .line 141
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez p1, :cond_9

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    .line 143
    :cond_a
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    if-nez p1, :cond_b

    .line 144
    iput-object v4, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    .line 146
    :cond_b
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->C:Ljava/lang/String;

    if-eqz p1, :cond_c

    return-object p1

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "number"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->F:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/k;)V
    .locals 1

    const-string v0, "callType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    return-void
.end method

.method public final b(JLkotlin/c/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->b:I

    sub-int/2addr p3, v2

    iput p3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;

    invoke-direct {v0, p0, p3}, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 486
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->e:J

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 493
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_2
    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 487
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/utils/r;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 488
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "NumberInfo.addToCheckedCalls on nav_main thread!"

    invoke-static {p3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 489
    sget-object p3, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, p3

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance p3, Lorg/mistergroup/shouldianswer/model/NumberInfo$d;

    invoke-direct {p3, p0, p1, p2, v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$d;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)V

    move-object v5, p3

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    goto :goto_1

    .line 491
    :cond_3
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->d:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->e:J

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$c;->b:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 493
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final b(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 150
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$j;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 151
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->D:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "number"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "number"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Voicemail"

    return-object p1

    .line 232
    :cond_1
    invoke-static {p0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const v0, 0x7f10009a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.block_reason_hidden)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final c(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 160
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 162
    invoke-static {}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 165
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v2
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "country"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 260
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 261
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$u;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 262
    :goto_1
    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-nez v1, :cond_4

    const-string v2, "callType"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Lorg/mistergroup/shouldianswer/model/k;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->i:Z

    goto :goto_2

    :cond_5
    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j:Z

    :goto_2
    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lorg/mistergroup/shouldianswer/model/k;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-nez v0, :cond_0

    const-string v1, "callType"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 274
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 277
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 275
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    .line 276
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$k;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 277
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->J:Lorg/mistergroup/shouldianswer/model/h;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    return-object p1
.end method

.method public final e()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    return v0
.end method

.method public final f(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 286
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->e:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/m$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 287
    sget-object p1, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$m;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    move-object p1, v0

    .line 286
    :goto_1
    check-cast p1, Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {v1, p1}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    const-string v0, "number"

    .line 71
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v4, "-1"

    if-nez v1, :cond_b

    :try_start_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 76
    :cond_3
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "country"

    if-nez v1, :cond_4

    :try_start_2
    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    move v2, v3

    :cond_5
    if-nez v2, :cond_8

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    const-string v2, "WW"

    invoke-static {v1, v2, v3}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "ZZ"

    .line 77
    :cond_9
    :goto_2
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v2, :cond_a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    goto :goto_4

    .line 74
    :cond_b
    :goto_3
    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 80
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumberFormatted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v5, :cond_c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    .line 82
    :goto_4
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 83
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v1, :cond_d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    .line 85
    :cond_e
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 5

    const-string v0, "country"

    const-string v1, "number"

    .line 91
    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->I:Z

    if-eqz v2, :cond_0

    .line 92
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->H:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 95
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->H:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberInfo.getNumberParsed Can\'t parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for country \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1, v3}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->I:Z

    .line 100
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->H:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public final g(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 355
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 356
    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-nez v2, :cond_4

    const-string v5, "callType"

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v2}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Lorg/mistergroup/shouldianswer/model/k;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->d:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 355
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    :cond_6
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$v;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->i(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :goto_3
    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 359
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 361
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 360
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$w;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 361
    :goto_1
    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    .line 105
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    const-string v1, "number"

    const-string v2, "-1"

    if-nez v0, :cond_4

    .line 106
    invoke-static {p0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v0, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 115
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v4, "country"

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    .line 120
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 121
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    .line 123
    :cond_6
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 124
    iput-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    .line 126
    :cond_7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->D:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 364
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 366
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 365
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$x;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 366
    :goto_1
    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 369
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 370
    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-nez v2, :cond_4

    const-string v5, "callType"

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v2}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Lorg/mistergroup/shouldianswer/model/k;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->d:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 369
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    :cond_6
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$y;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :goto_3
    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->E:Lorg/mistergroup/shouldianswer/model/NumberCaption;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    return-object v0

    .line 208
    :cond_2
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/m$a;->a()[Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    invoke-static {v0, v1}, Lkotlin/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->o()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 210
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 211
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    return-object v0

    .line 216
    :cond_4
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->F:Ljava/lang/String;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 374
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 375
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$aa;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 376
    :goto_1
    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 5

    .line 241
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    const-string v2, ", "

    const-string v3, ""

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 245
    :goto_0
    sget-object v1, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/m$a;->a()[Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v1

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    invoke-static {v1, v4}, Lkotlin/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->o()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 247
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v0, v2

    .line 252
    :cond_3
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->J:Lorg/mistergroup/shouldianswer/model/h;

    if-eqz v1, :cond_4

    .line 253
    sget-object v2, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v1, v2, :cond_4

    sget-object v2, Lorg/mistergroup/shouldianswer/model/h;->h:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v1, v2, :cond_4

    sget-object v2, Lorg/mistergroup/shouldianswer/model/h;->c:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v1, v2, :cond_4

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/h;->m:Lorg/mistergroup/shouldianswer/model/h$a;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/h$a;->a(Lorg/mistergroup/shouldianswer/model/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_4
    return-object v3
.end method

.method public final l(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 379
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 381
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 380
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$z;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 381
    :goto_1
    iget-boolean p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final l()Lorg/mistergroup/shouldianswer/model/h;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->J:Lorg/mistergroup/shouldianswer/model/h;

    return-object v0
.end method

.method public final m(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/ag;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 384
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 386
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 385
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$p;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 386
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    return-object p1
.end method

.method public final m()Lorg/mistergroup/shouldianswer/model/h;
    .locals 1

    .line 280
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->J:Lorg/mistergroup/shouldianswer/model/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final n(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/ag;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 398
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 400
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 399
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$t;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 400
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    return-object p1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 291
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->u()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    sget-object v1, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 407
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 409
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 408
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$o;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 409
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-object p1
.end method

.method public final o()Lorg/mistergroup/shouldianswer/model/ac;
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->K:Lorg/mistergroup/shouldianswer/model/ac;

    if-nez v0, :cond_3

    .line 310
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k:Z

    if-eqz v0, :cond_3

    .line 311
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ae;->a:Lorg/mistergroup/shouldianswer/model/ae;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v2, "number"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/ae;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->K:Lorg/mistergroup/shouldianswer/model/ac;

    .line 312
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    .line 314
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->K:Lorg/mistergroup/shouldianswer/model/ac;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k:Z

    .line 318
    :cond_3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->K:Lorg/mistergroup/shouldianswer/model/ac;

    return-object v0
.end method

.method public final p(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/ag;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 416
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 418
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 417
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$q;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 418
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    return-object p1
.end method

.method public final p()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 390
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final q(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 425
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 426
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$s;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 427
    :goto_1
    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w:I

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lorg/mistergroup/shouldianswer/model/NumberReport;
    .locals 1

    .line 413
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final r(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 439
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 441
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 440
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$r;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 441
    :goto_1
    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->y:I

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 422
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final s()Ljava/lang/Integer;
    .locals 1

    .line 431
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final s(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 472
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 474
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 473
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-nez p1, :cond_3

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$l;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 474
    :goto_1
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    return-object p1
.end method

.method public final t()Ljava/lang/Integer;
    .locals 1

    .line 445
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic t(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 500
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->g:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->f:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 541
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 501
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    .line 502
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    .line 503
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    .line 505
    :try_start_1
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object p1

    .line 506
    sget-object v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v2, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 508
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->a()I

    move-result v5

    iput v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w:I

    .line 509
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->b()I

    move-result v5

    iput v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->y:I

    .line 510
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->c()I

    move-result v5

    iput v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->x:I

    .line 511
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->a()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    int-to-double v5, v5

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->c()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 512
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->a()I

    move-result v7

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->b()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->c()I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_3

    int-to-double v7, v7

    div-double v9, v5, v7

    :cond_3
    int-to-double v5, v3

    cmpg-double v5, v9, v5

    if-gtz v5, :cond_4

    .line 514
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    int-to-double v5, v5

    cmpl-double v5, v9, v5

    if-ltz v5, :cond_5

    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    goto :goto_1

    :cond_5
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->d:Lorg/mistergroup/shouldianswer/model/ag;

    :goto_1
    iput-object v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    .line 515
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->b()I

    move-result v5

    iput v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t:I

    .line 516
    sget-object v5, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v5

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    .line 519
    :cond_6
    sget-object v5, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iget-boolean v6, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    invoke-static {v6}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->e:Ljava/lang/Object;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->f:Ljava/lang/Object;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->g:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$i;->b:I

    invoke-virtual {v5, p0, v6, v0}, Lorg/mistergroup/shouldianswer/model/aa;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Ljava/lang/Boolean;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    move-object v1, v0

    .line 500
    :goto_2
    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iput-object p1, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 520
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz p1, :cond_8

    .line 521
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v1

    iput-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    .line 522
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object p1

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    .line 525
    :cond_8
    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v()Z

    move-result p1

    .line 527
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    if-eqz p1, :cond_9

    .line 530
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    .line 531
    iput-boolean v4, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->u:Z

    .line 534
    :cond_9
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq p1, v1, :cond_a

    .line 535
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 538
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 541
    :cond_a
    :goto_3
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method final synthetic u(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;

    iget v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;

    invoke-direct {v2, v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 556
    iget v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    const-string v5, "number"

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v11, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iget-boolean v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    check-cast v4, Lkotlin/e/b/m$c;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v14, v2

    goto/16 :goto_7

    .line 673
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_2
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget-object v8, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iget-boolean v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    check-cast v12, Lkotlin/e/b/m$c;

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v4, v12

    move-object v14, v13

    goto/16 :goto_5

    :cond_3
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iget-boolean v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    check-cast v13, Lkotlin/e/b/m$c;

    iget-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v4, v9

    move v9, v10

    goto/16 :goto_4

    :cond_4
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iget-boolean v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iget-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    check-cast v14, Lkotlin/e/b/m$c;

    iget-object v15, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v7, v4

    move v4, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    goto/16 :goto_2

    :cond_5
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iget-boolean v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iget-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    check-cast v14, Lkotlin/e/b/m$c;

    iget-object v15, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 558
    new-instance v14, Lkotlin/e/b/m$c;

    invoke-direct {v14}, Lkotlin/e/b/m$c;-><init>()V

    const-string v1, ""

    iput-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 559
    invoke-direct/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v()Z

    move-result v13

    .line 560
    invoke-static/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v1

    .line 562
    iput-boolean v6, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 563
    sget-object v4, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v4, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 565
    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    .line 566
    sget-object v12, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v4, v12, :cond_7

    .line 567
    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dontBlockDueProtectionLevel"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 568
    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 571
    :cond_7
    iget-object v12, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v12, :cond_8

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v10, :cond_9

    if-nez v1, :cond_9

    .line 572
    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dontBlockDueShortNumber"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 573
    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 576
    :cond_9
    sget-object v12, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    iput-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    iput-boolean v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iput-boolean v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    iput v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    invoke-virtual {v12, v0, v2}, Lorg/mistergroup/shouldianswer/model/g;->b(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_a

    return-object v3

    :cond_a
    move-object v15, v0

    move-object/from16 v16, v12

    move v12, v1

    move-object/from16 v1, v16

    .line 556
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 577
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 578
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 579
    iput-boolean v11, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 580
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->i:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 581
    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 583
    :cond_b
    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 589
    :cond_c
    sget-object v7, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v15, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    iput-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    iput-boolean v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iput-boolean v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    iput v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    invoke-virtual {v7, v15, v2}, Lorg/mistergroup/shouldianswer/model/g;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_d

    return-object v3

    :cond_d
    move-object v9, v4

    move v4, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v16, v7

    move-object v7, v1

    move-object/from16 v1, v16

    .line 556
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 591
    invoke-static {v6}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 592
    iget-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantAllowInDueExceptionNumberMask"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 593
    iget-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 596
    :cond_e
    invoke-static {v11}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 597
    iget-object v6, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v15, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v6, v15, :cond_f

    .line 598
    iget-object v6, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " wantBlockInDueExceptionNumberMaskBUTLocalRatingPossitive"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_f
    if-eqz v12, :cond_10

    .line 600
    iget-object v6, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " wantBlockInDueExceptionNumberMaskBUTIsInContacts"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_3

    .line 602
    :cond_10
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 603
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->j:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 604
    iget-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInDueExceptionNumberMask"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 605
    iget-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 609
    :cond_11
    :goto_3
    sget-object v6, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v15

    iput-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    iput-boolean v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iput-boolean v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->h:Ljava/lang/Object;

    iput v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    invoke-virtual {v6, v15, v2}, Lorg/mistergroup/shouldianswer/model/g;->a(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_12

    return-object v3

    :cond_12
    move-object/from16 v16, v7

    move-object v7, v1

    move-object v1, v6

    move-object/from16 v6, v16

    move-object/from16 v17, v9

    move v9, v4

    move-object/from16 v4, v17

    .line 556
    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 610
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 611
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->k:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 612
    iget-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInDueExceptionContact"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 613
    iget-object v1, v13, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 616
    :cond_13
    sget-object v1, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v10

    iput-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    iput-boolean v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iput-boolean v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->h:Ljava/lang/Object;

    iput v8, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    invoke-virtual {v1, v10, v2}, Lorg/mistergroup/shouldianswer/model/g;->b(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_14

    return-object v3

    :cond_14
    move-object v8, v4

    move v10, v12

    move-object v4, v13

    .line 556
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 617
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 618
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->l:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 619
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInDueExceptionContactGroup"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 620
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 623
    :cond_15
    iget-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_18

    .line 624
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " blockIncomingLocalNegative("

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 625
    iget-object v12, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " blockIncomingCommunityNegative("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/ai;->i()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 627
    iget-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_16

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 628
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 629
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->h:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 630
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInDueLocalRating"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 631
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 633
    :cond_16
    iget-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_18

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->i()Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v10, :cond_18

    .line 634
    iget v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t:I

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/ai;->f()I

    move-result v12

    if-lt v1, v12, :cond_17

    .line 635
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 636
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->c:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 637
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInDueCommunityRating"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 638
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 640
    :cond_17
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->i:Z

    .line 641
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInButDBHasHigherSensitivity"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 646
    :cond_18
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez v9, :cond_1a

    if-nez v10, :cond_1a

    .line 648
    iget-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_19

    .line 649
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInUnallowedNotInContactsButPositiveLocalRating"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_6

    .line 651
    :cond_19
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 652
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->b:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 653
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInUnallowedNotInContacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 654
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1a
    :goto_6
    if-eqz v9, :cond_1b

    .line 658
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->k()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 659
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 660
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->f:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 661
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInHidden"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 662
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 665
    :cond_1b
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->l()Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/n;->a:Lorg/mistergroup/shouldianswer/utils/n;

    iget-object v12, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v12, :cond_1c

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1c
    iget-object v5, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v5, :cond_1d

    const-string v13, "country"

    invoke-static {v13}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1d
    iput-object v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->d:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->e:Ljava/lang/Object;

    iput-boolean v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->i:Z

    iput-boolean v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->j:Z

    iput-object v8, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->f:Ljava/lang/Object;

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->g:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->h:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    invoke-virtual {v1, v12, v5, v2}, Lorg/mistergroup/shouldianswer/utils/n;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1e

    return-object v3

    :cond_1e
    move v3, v10

    .line 556
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 666
    iget-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v2, :cond_1f

    if-nez v3, :cond_20

    iget-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq v1, v2, :cond_20

    .line 667
    :cond_1f
    iput-boolean v11, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    .line 668
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->e:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    .line 669
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockInForeign"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 670
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 673
    :cond_20
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public final u()Lorg/mistergroup/shouldianswer/model/m;
    .locals 1

    .line 477
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final synthetic v(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;

    iget v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;

    invoke-direct {v2, v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 676
    iget v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    const-string v5, "country"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v8, "number"

    const/4 v9, 0x1

    packed-switch v4, :pswitch_data_0

    .line 786
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :pswitch_0
    iget-object v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v3, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    check-cast v4, Lkotlin/e/b/m$c;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    check-cast v10, Lkotlin/e/b/m$c;

    iget-object v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    check-cast v10, Lkotlin/e/b/m$c;

    iget-object v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v4, v6

    goto/16 :goto_5

    :pswitch_3
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    check-cast v12, Lkotlin/e/b/m$c;

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object/from16 v16, v13

    move-object v13, v4

    move-object v4, v10

    move-object v10, v12

    move-object v12, v7

    move v7, v11

    move-object/from16 v11, v16

    goto/16 :goto_4

    :pswitch_4
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    check-cast v12, Lkotlin/e/b/m$c;

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/af;

    iget-boolean v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iget-object v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    check-cast v11, Lkotlin/e/b/m$c;

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move-object v10, v4

    goto/16 :goto_1

    :pswitch_6
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 677
    new-instance v1, Lkotlin/e/b/m$c;

    invoke-direct {v1}, Lkotlin/e/b/m$c;-><init>()V

    const-string v4, ""

    iput-object v4, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 678
    invoke-direct/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v()Z

    move-result v4

    .line 679
    iput-boolean v7, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 680
    sget-object v10, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 682
    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v10

    .line 683
    sget-object v11, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v10, v11, :cond_1

    .line 684
    iget-object v2, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dontBlockDueProtectionLevel"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 685
    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 688
    :cond_1
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v11, :cond_2

    invoke-static {v8}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v6, :cond_3

    .line 689
    iget-object v2, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dontBlockDueShortNumber"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 690
    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 693
    :cond_3
    sget-object v11, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    iput-boolean v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    iput v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    invoke-virtual {v11, v0, v2}, Lorg/mistergroup/shouldianswer/model/g;->b(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_4

    return-object v3

    :cond_4
    move-object v13, v0

    move-object v12, v1

    move-object v1, v11

    move v11, v4

    .line 676
    :goto_1
    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 694
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 695
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 696
    iput-boolean v9, v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 697
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->i:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 698
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueException"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 699
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 701
    :cond_5
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dontBlockOutDueException"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 702
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 708
    :cond_6
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " blockOutgoingLocalNegative("

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 709
    iget-object v14, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " blockOutgoingCommunityNegative("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/ai;->n()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 711
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 712
    sget-object v1, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    iput-boolean v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    const/4 v14, 0x2

    iput v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    invoke-virtual {v1, v13, v2}, Lorg/mistergroup/shouldianswer/model/g;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    .line 676
    :cond_7
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 713
    invoke-static {v7}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 714
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dontBlockDueExceptionNumberMask"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 715
    iget-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 717
    :cond_8
    invoke-static {v9}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 718
    iget-object v7, v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v7, v14, :cond_9

    .line 719
    iget-object v7, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " wantBlockOutDueExceptionNumberMaskBUTLocalRatingPossitive"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v11, :cond_a

    .line 721
    iget-object v7, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " wantBlockOutDueExceptionNumberMaskBUTIsInContacts"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_3

    .line 723
    :cond_a
    iput-boolean v9, v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 724
    sget-object v7, Lorg/mistergroup/shouldianswer/model/h;->j:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v7, v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 725
    iget-object v7, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " wantBlockOutDueExceptionNumberMask"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 728
    :cond_b
    :goto_3
    sget-object v7, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v14

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    iput-boolean v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->h:Ljava/lang/Object;

    const/4 v15, 0x3

    iput v15, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    invoke-virtual {v7, v14, v2}, Lorg/mistergroup/shouldianswer/model/g;->a(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_c

    return-object v3

    :cond_c
    move-object/from16 v16, v13

    move-object v13, v1

    move-object v1, v7

    move v7, v11

    move-object/from16 v11, v16

    move-object/from16 v17, v12

    move-object v12, v4

    move-object v4, v10

    move-object/from16 v10, v17

    .line 676
    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 729
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 730
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->k:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 731
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueExceptionContact"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 732
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 734
    :cond_d
    sget-object v1, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v14

    iput-object v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    iput-boolean v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->h:Ljava/lang/Object;

    iput v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    invoke-virtual {v1, v14, v2}, Lorg/mistergroup/shouldianswer/model/g;->b(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    return-object v3

    .line 676
    :cond_e
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 735
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 736
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->l:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 737
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueExceptionContactGroup"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 738
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_f
    move-object v6, v4

    move-object v4, v12

    goto :goto_6

    :cond_10
    move-object v6, v10

    move v7, v11

    move-object v10, v12

    move-object v11, v13

    .line 743
    :goto_6
    iget-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_13

    .line 744
    iget-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_11

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->m()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 745
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 746
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->h:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 747
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueLocalRating"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 748
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 751
    :cond_11
    iget-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v12, :cond_13

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->n()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 752
    iget v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t:I

    sget-object v12, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/ai;->f()I

    move-result v12

    if-lt v1, v12, :cond_12

    .line 753
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 754
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->c:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 755
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueCommunityRating"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 756
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 758
    :cond_12
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j:Z

    .line 759
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutButDBHasHigherSensitivity"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 764
    :cond_13
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->o()Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez v7, :cond_14

    .line 765
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->b:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 766
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 767
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueNotInContacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 768
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 771
    :cond_14
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->q()Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/n;->a:Lorg/mistergroup/shouldianswer/utils/n;

    iget-object v12, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v12, :cond_15

    invoke-static {v8}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v13, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v13, :cond_16

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iput-object v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    iput-boolean v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    const/4 v14, 0x5

    iput v14, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    invoke-virtual {v1, v12, v13, v2}, Lorg/mistergroup/shouldianswer/utils/n;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_17

    return-object v3

    .line 676
    :cond_17
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 772
    iput-boolean v9, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 773
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->d:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 774
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDuePremiumRate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 775
    iget-object v1, v10, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_18
    move-object v1, v4

    move-object v4, v10

    .line 778
    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->p()Z

    move-result v10

    if-eqz v10, :cond_1d

    sget-object v10, Lorg/mistergroup/shouldianswer/utils/n;->a:Lorg/mistergroup/shouldianswer/utils/n;

    iget-object v12, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v12, :cond_19

    invoke-static {v8}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_19
    iget-object v8, v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v8, :cond_1a

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iput-object v11, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->d:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->e:Ljava/lang/Object;

    iput-boolean v7, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->i:Z

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->f:Ljava/lang/Object;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->g:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo$h;->b:I

    invoke-virtual {v10, v12, v8, v2}, Lorg/mistergroup/shouldianswer/utils/n;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1b

    return-object v3

    :cond_1b
    move v3, v7

    move-object v2, v11

    .line 676
    :goto_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 779
    iget-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v1, v5, :cond_1c

    if-nez v3, :cond_1d

    iget-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq v1, v3, :cond_1d

    .line 780
    :cond_1c
    iput-boolean v9, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    .line 781
    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->e:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    .line 782
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantBlockOutDueForeign"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 783
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 786
    :cond_1d
    iget-object v1, v4, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ")"

    instance-of v3, v0, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;

    iget v4, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    sub-int/2addr v0, v5

    iput v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;

    invoke-direct {v3, v1, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    :goto_0
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    .line 789
    iget v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    .line 839
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :pswitch_0
    iget-object v2, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-boolean v4, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-boolean v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iget-boolean v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v3

    goto/16 :goto_9

    :pswitch_1
    iget-object v2, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iget-object v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-boolean v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iget-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iget-object v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v13

    goto/16 :goto_8

    :pswitch_2
    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-boolean v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iget-boolean v14, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iget-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_2
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v12

    move v12, v14

    move/from16 v16, v13

    move-object v13, v10

    move-object v10, v11

    move/from16 v11, v16

    goto/16 :goto_6

    :pswitch_3
    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-boolean v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iget-boolean v14, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iget-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_3
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v12

    move v12, v13

    move-object/from16 v16, v15

    move-object v15, v5

    move-object/from16 v5, v16

    goto/16 :goto_5

    :pswitch_4
    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-boolean v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iget-boolean v14, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iget-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_4
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v16, v14

    move-object v14, v0

    move-object v0, v12

    move v12, v13

    move/from16 v13, v16

    goto/16 :goto_4

    :pswitch_5
    iget-boolean v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iget-object v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iget-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iget-object v14, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    :try_start_5
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v11

    move v11, v5

    move-object v5, v14

    goto/16 :goto_3

    :pswitch_6
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 792
    :try_start_6
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v13

    .line 793
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->k()Z

    move-result v12

    if-nez v13, :cond_1

    .line 795
    iput-boolean v6, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    .line 796
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "Permissions.Contacts.Read"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "Permissions.Contacts.Write"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    .line 802
    iget-boolean v5, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    if-eqz v5, :cond_2

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v9, "NumberInfo.collectData before getContactInfo"

    invoke-static {v5, v9, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 803
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v10

    if-eqz v13, :cond_3

    .line 804
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v5

    move-object v9, v5

    goto :goto_1

    :cond_3
    move-object v9, v8

    :goto_1
    if-eqz v9, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 806
    :goto_2
    iget-boolean v11, v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    if-eqz v11, :cond_5

    sget-object v11, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v14, "NumberInfo.collectData computeRating"

    invoke-static {v11, v14, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 807
    :cond_5
    iput-object v1, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    iput-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iput-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    iput-boolean v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iput v6, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_6

    return-object v4

    :cond_6
    move v11, v5

    move-object v5, v1

    .line 808
    :goto_3
    sget-object v14, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    iput-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iput-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    iput-boolean v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    iput v7, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    invoke-virtual {v14, v5, v3}, Lorg/mistergroup/shouldianswer/model/g;->b(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_7

    return-object v4

    :cond_7
    move-object v15, v5

    move-object/from16 v16, v10

    move-object v10, v9

    move v9, v11

    move-object/from16 v11, v16

    .line 789
    :goto_4
    check-cast v14, Ljava/lang/Boolean;

    iput-object v14, v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;->D:Ljava/lang/Boolean;

    .line 809
    sget-object v5, Lorg/mistergroup/shouldianswer/model/w;->a:Lorg/mistergroup/shouldianswer/model/w;

    iget-boolean v14, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    iput-boolean v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iput-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    iput-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    iput-boolean v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    invoke-virtual {v5, v15, v14, v3}, Lorg/mistergroup/shouldianswer/model/w;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_8

    return-object v4

    :cond_8
    move-object v6, v0

    move-object v0, v5

    move v14, v13

    move-object v5, v15

    .line 789
    :goto_5
    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    iput-object v0, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->E:Lorg/mistergroup/shouldianswer/model/NumberCaption;

    .line 810
    sget-object v0, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iget-boolean v13, v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    iput-boolean v14, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iput-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iput-object v6, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    iput-object v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    iput-boolean v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    const/4 v15, 0x4

    iput v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    invoke-virtual {v0, v5, v13, v3}, Lorg/mistergroup/shouldianswer/model/aa;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    return-object v4

    :cond_9
    move-object v15, v5

    move-object v13, v10

    move-object v10, v11

    move v11, v12

    move v12, v14

    .line 789
    :goto_6
    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iput-object v0, v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 811
    iget-boolean v0, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    if-eqz v0, :cond_a

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "NumberInfo.collectData after computeRating"

    invoke-static {v0, v5, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 812
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contact("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_b

    const-string v5, "true"

    goto :goto_7

    :cond_b
    const-string v5, "false"

    :goto_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rating("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " local("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " community("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    invoke-direct {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w()V

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    iput-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iput-boolean v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    iput-object v13, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    iput-boolean v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    invoke-virtual {v15, v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->u(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_c

    return-object v4

    :cond_c
    move v5, v9

    move-object v9, v13

    .line 789
    :goto_8
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->d:Ljava/lang/Object;

    iput-boolean v12, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->i:Z

    iput-boolean v11, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->j:Z

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->e:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->f:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->g:Ljava/lang/Object;

    iput-boolean v5, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->k:Z

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->h:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v3, Lorg/mistergroup/shouldianswer/model/NumberInfo$f;->b:I

    invoke-virtual {v15, v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_d

    return-object v4

    :cond_d
    move v4, v5

    .line 789
    :goto_9
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    sget-object v2, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v5, "callType"

    if-nez v3, :cond_e

    :try_start_7
    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Lorg/mistergroup/shouldianswer/model/k;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    goto :goto_a

    :cond_f
    iget-object v2, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    :goto_a
    iput-object v2, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->J:Lorg/mistergroup/shouldianswer/model/h;

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberInfo.collectData number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget-object v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v3, :cond_10

    const-string v6, "country"

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    iget-object v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-nez v3, :cond_11

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/k;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " infoIsInContacts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wantAlertIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    iget-boolean v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wantBlockIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    iget-boolean v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wantAlertOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-boolean v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wantBlockOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    iget-boolean v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    iget-boolean v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " blockReasonIn="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/h;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    :cond_12
    iget-boolean v3, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " blockReasonOut="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/h;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    iget-boolean v2, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    if-eqz v2, :cond_14

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, v0, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_14
    const/4 v0, 0x1

    .line 834
    iput-boolean v0, v15, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 836
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, v0, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 839
    :goto_b
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "number"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "country"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 854
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 855
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 856
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 857
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 858
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->i:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 859
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 860
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 861
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 862
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 863
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q:Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/h;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r:Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/h;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-nez v0, :cond_2

    const-string v1, "callType"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/k;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s:Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/m;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->u:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 872
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->v:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 873
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->z:Lorg/mistergroup/shouldianswer/model/NumberReport;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 879
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo;->E:Lorg/mistergroup/shouldianswer/model/NumberCaption;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
