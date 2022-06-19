.class public final Lcom/dropbox/core/v1/DbxEntry$a$c;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static d:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/dropbox/core/v1/DbxEntry$a$c;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Lcom/dropbox/core/v1/DbxEntry$a$a;

.field public final c:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 479
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a$c;->d:Lcom/dropbox/core/json/JsonReader;

    .line 510
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/dropbox/core/v1/DbxEntry$a$c;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$a$a;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a$c;->e:Lcom/dropbox/core/v1/DbxEntry$a$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$a$a;Ljava/lang/Long;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->a:Ljava/util/Date;

    .line 475
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    .line 476
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "timeTaken"

    .line 515
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Ljava/util/Date;)Lcom/dropbox/core/util/b;

    const-string v0, "location"

    .line 516
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    const-string v0, "duration"

    .line 517
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->c(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$a$c;

    .line 1529
    sget-object v1, Lcom/dropbox/core/v1/DbxEntry$a$c;->e:Lcom/dropbox/core/v1/DbxEntry$a$c;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 1530
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->a:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a$c;->a:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1531
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$a$c;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-static {v1, v3}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->c:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$a$c;->c:Ljava/lang/Long;

    invoke-static {v1, p1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    :goto_0
    if-eq p1, p0, :cond_4

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->a:Ljava/util/Date;

    invoke-static {v0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    .line 541
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->b:Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-static {v1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 542
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$c;->c:Ljava/lang/Long;

    invoke-static {v1}, Lcom/dropbox/core/util/d;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
