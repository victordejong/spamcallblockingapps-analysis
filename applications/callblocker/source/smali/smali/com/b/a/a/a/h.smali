.class public Lcom/b/a/a/a/h;
.super Ljava/lang/Object;
.source "TransactionDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/b/a/a/a/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final e:Lcom/b/a/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/b/a/a/a/h$1;

    invoke-direct {v0}, Lcom/b/a/a/a/h$1;-><init>()V

    sput-object v0, Lcom/b/a/a/a/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-class v0, Lcom/b/a/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/e;

    iput-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    .line 111
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/a/h;->c:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    iput-object v0, p0, Lcom/b/a/a/a/h;->d:Ljava/util/Date;

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/a/e;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    .line 56
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/a/h;->c:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    iput-object v0, p0, Lcom/b/a/a/a/h;->d:Ljava/util/Date;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    check-cast p1, Lcom/b/a/a/a/h;

    .line 87
    iget-object v2, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s purchased at %s(%s). Token: %s, Signature: %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/a/a/h;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/b/a/a/a/h;->d:Ljava/util/Date;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/b/a/a/a/h;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/b/a/a/a/h;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v4, v4, Lcom/b/a/a/a/e;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    return-void
.end method
