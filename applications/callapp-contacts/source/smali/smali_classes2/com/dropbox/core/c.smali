.class public final Lcom/dropbox/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field public h:J

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/c;->j:Lcom/dropbox/core/json/JsonReader;

    .line 284
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/c;->k:Lcom/dropbox/core/json/JsonReader;

    .line 301
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/c;->l:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/c;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/dropbox/core/c;->a:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/dropbox/core/c;->b:Ljava/lang/Long;

    .line 81
    iput-object p3, p0, Lcom/dropbox/core/c;->c:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/dropbox/core/c;->d:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/dropbox/core/c;->e:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/dropbox/core/c;->f:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/dropbox/core/c;->g:Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/c;->h:J

    .line 87
    iput-object p8, p0, Lcom/dropbox/core/c;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/c;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
