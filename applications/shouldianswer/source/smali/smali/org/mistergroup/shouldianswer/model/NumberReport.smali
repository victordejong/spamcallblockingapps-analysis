.class public final Lorg/mistergroup/shouldianswer/model/NumberReport;
.super Ljava/lang/Object;
.source "NumberReport.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/NumberReport$c;,
        Lorg/mistergroup/shouldianswer/model/NumberReport$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lorg/mistergroup/shouldianswer/model/NumberReport$a;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lorg/mistergroup/shouldianswer/model/ag;

.field private g:Lorg/mistergroup/shouldianswer/model/m;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Date;

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberReport$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberReport$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/NumberReport;->a:Lorg/mistergroup/shouldianswer/model/NumberReport$a;

    .line 140
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberReport$b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport$b;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lorg/mistergroup/shouldianswer/model/NumberReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ab;->a:Lorg/mistergroup/shouldianswer/utils/ab;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ab;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    .line 33
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ab;->a:Lorg/mistergroup/shouldianswer/utils/ab;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ab;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    .line 33
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->b:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->d:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->e:Ljava/lang/String;

    .line 114
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    .line 115
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->h:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->j:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->l:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->m:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->n:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/e/b/e;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 1

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ab;->a:Lorg/mistergroup/shouldianswer/utils/ab;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ab;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    .line 33
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    .line 100
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->p()V

    .line 101
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->d:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->e:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberReport$c;)V
    .locals 3

    const-string v0, "companyInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "companyName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "companyAction"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "companyWebsite"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->l:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->m:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->n:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->h:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    return-void
.end method

.method public final f()Lorg/mistergroup/shouldianswer/model/m;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->j:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/util/Date;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->l:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->m:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->n:Z

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 43
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/m$a;->a()[Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    invoke-static {v0, v1}, Lkotlin/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->o()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lorg/mistergroup/shouldianswer/model/NumberReport$c;
    .locals 13

    const-string v0, "companyWebsite"

    const-string v1, "companyAction"

    const-string v2, "companyName"

    const-string v3, "comment"

    const/4 v4, 0x0

    .line 52
    :try_start_0
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_6

    .line 53
    new-instance v5, Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/e/b/e;)V

    .line 54
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "json.getString(\"comment\")"

    invoke-static {v3, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d(Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "json.getString(\"companyName\")"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a(Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "json.getString(\"companyAction\")"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->b(Ljava/lang/String;)V

    .line 58
    :cond_4
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(\"companyWebsite\")"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v5

    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    invoke-static {v1, v0, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    return-object v4
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 8

    .line 134
    new-instance v7, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->j:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->f:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->g:Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/m;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->k:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-boolean p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-boolean p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean p2, p0, Lorg/mistergroup/shouldianswer/model/NumberReport;->n:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
