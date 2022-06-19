.class public final Lcom/dropbox/core/v1/a;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/a$a;,
        Lcom/dropbox/core/v1/a$b;
    }
.end annotation


# static fields
.field public static final i:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/dropbox/core/json/JsonReader$FieldMapping;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dropbox/core/v1/a$b;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/dropbox/core/v1/a$a;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/a;->i:Lcom/dropbox/core/json/JsonReader;

    .line 283
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    const-string v1, "uid"

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "display_name"

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "country"

    const/4 v2, 0x2

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "referral_link"

    const/4 v2, 0x3

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "quota_info"

    const/4 v2, 0x4

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "name_details"

    const/4 v2, 0x5

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "email"

    const/4 v2, 0x6

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "email_verified"

    const/4 v2, 0x7

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 293
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/a;->j:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v1/a$b;Ljava/lang/String;Lcom/dropbox/core/v1/a$a;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/dropbox/core/v1/a;->a:J

    .line 30
    iput-object p3, p0, Lcom/dropbox/core/v1/a;->b:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/dropbox/core/v1/a;->c:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/dropbox/core/v1/a;->d:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/dropbox/core/v1/a;->e:Lcom/dropbox/core/v1/a$b;

    .line 34
    iput-object p7, p0, Lcom/dropbox/core/v1/a;->f:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/dropbox/core/v1/a;->g:Lcom/dropbox/core/v1/a$a;

    .line 36
    iput-boolean p9, p0, Lcom/dropbox/core/v1/a;->h:Z

    return-void
.end method

.method static synthetic b()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .line 14
    sget-object v0, Lcom/dropbox/core/v1/a;->j:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 3

    const-string v0, "userId"

    .line 42
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/b;->a(J)Lcom/dropbox/core/util/b;

    const-string v0, "displayName"

    .line 43
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "country"

    .line 44
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "referralLink"

    .line 45
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "quota"

    .line 46
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a;->e:Lcom/dropbox/core/v1/a$b;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    const-string v0, "nameDetails"

    .line 47
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a;->g:Lcom/dropbox/core/v1/a$a;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->a(Lcom/dropbox/core/util/c;)Lcom/dropbox/core/util/b;

    const-string v0, "email"

    .line 48
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "emailVerified"

    .line 49
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/dropbox/core/v1/a;->h:Z

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->a(Z)Lcom/dropbox/core/util/b;

    return-void
.end method
