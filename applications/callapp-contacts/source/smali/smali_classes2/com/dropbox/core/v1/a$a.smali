.class public final Lcom/dropbox/core/v1/a$a;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final d:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/dropbox/core/json/JsonReader$FieldMapping;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 156
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/a$a;->d:Lcom/dropbox/core/json/JsonReader;

    .line 203
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    const-string v1, "familiar_name"

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "given_name"

    const/4 v2, 0x1

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "surname"

    const/4 v2, 0x2

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 207
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/a$a;->e:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/dropbox/core/v1/a$a;->a:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/dropbox/core/v1/a$a;->b:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/dropbox/core/v1/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .line 132
    sget-object v0, Lcom/dropbox/core/v1/a$a;->e:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "familiarName"

    .line 148
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "givenName"

    .line 149
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "surname"

    .line 150
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/v1/a$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    return-void
.end method
