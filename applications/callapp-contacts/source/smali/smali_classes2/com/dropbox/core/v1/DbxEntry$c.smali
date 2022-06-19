.class public final Lcom/dropbox/core/v1/DbxEntry$c;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/dropbox/core/v1/DbxEntry;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 677
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$c;->d:Lcom/dropbox/core/json/JsonReader;

    .line 687
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren$2;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$WithChildren$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$c;->e:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;)V"
        }
    .end annotation

    .line 671
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->a:Lcom/dropbox/core/v1/DbxEntry;

    .line 673
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$c;->b:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxEntry$c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$c;->a:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    const-string v0, "hash"

    .line 726
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "children"

    .line 727
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$c;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->a(Ljava/lang/Iterable;)Lcom/dropbox/core/util/b;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 700
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$c;

    .line 1705
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->c:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$c;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/dropbox/core/v1/DbxEntry$c;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 1707
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->a:Lcom/dropbox/core/v1/DbxEntry;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$c;->a:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1708
    :cond_2
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$c;->a:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 717
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 718
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$c;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method
