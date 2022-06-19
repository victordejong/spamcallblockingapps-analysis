.class public final Lcom/dropbox/core/v1/a$b;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/dropbox/core/json/JsonReader$FieldMapping;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/a$b;->d:Lcom/dropbox/core/json/JsonReader;

    .line 123
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    const-string v1, "quota"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "normal"

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "shared"

    const/4 v2, 0x2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/a$b;->e:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/dropbox/core/v1/a$b;->a:J

    .line 61
    iput-wide p3, p0, Lcom/dropbox/core/v1/a$b;->b:J

    .line 62
    iput-wide p5, p0, Lcom/dropbox/core/v1/a$b;->c:J

    return-void
.end method

.method static synthetic b()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .line 52
    sget-object v0, Lcom/dropbox/core/v1/a$b;->e:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 3

    const-string v0, "total"

    .line 68
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/a$b;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/b;->a(J)Lcom/dropbox/core/util/b;

    const-string v0, "normal"

    .line 69
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/a$b;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/b;->a(J)Lcom/dropbox/core/util/b;

    const-string v0, "shared"

    .line 70
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-wide v0, p0, Lcom/dropbox/core/v1/a$b;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/dropbox/core/util/b;->a(J)Lcom/dropbox/core/util/b;

    return-void
.end method
