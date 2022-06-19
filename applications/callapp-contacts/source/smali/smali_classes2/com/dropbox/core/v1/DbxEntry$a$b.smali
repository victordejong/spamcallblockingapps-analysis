.class public final Lcom/dropbox/core/v1/DbxEntry$a$b;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static c:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/dropbox/core/v1/DbxEntry$a$b;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Lcom/dropbox/core/v1/DbxEntry$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 393
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a$b;->c:Lcom/dropbox/core/json/JsonReader;

    .line 418
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/dropbox/core/v1/DbxEntry$a$b;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$a$a;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a$b;->d:Lcom/dropbox/core/v1/DbxEntry$a$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$a$a;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->a:Ljava/util/Date;

    .line 390
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "timeTaken"

    .line 423
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Ljava/util/Date;)Lcom/dropbox/core/util/b;

    const-string v0, "location"

    .line 424
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$a$b;

    .line 1436
    sget-object v1, Lcom/dropbox/core/v1/DbxEntry$a$b;->d:Lcom/dropbox/core/v1/DbxEntry$a$b;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 1437
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->a:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a$b;->a:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1438
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$a$b;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-static {v1, p1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    if-eq p1, p0, :cond_3

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->a:Ljava/util/Date;

    invoke-static {v0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$b;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-static {v1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
