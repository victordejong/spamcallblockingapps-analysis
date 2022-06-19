.class public final Lcom/facebook/internal/l;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/l$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/w;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/l$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/facebook/internal/g;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lorg/json/JSONArray;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/g;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/w;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/l$a;",
            ">;>;Z",
            "Lcom/facebook/internal/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean p1, p0, Lcom/facebook/internal/l;->a:Z

    .line 77
    iput-object p2, p0, Lcom/facebook/internal/l;->b:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/facebook/internal/l;->c:Z

    .line 79
    iput-object p6, p0, Lcom/facebook/internal/l;->f:Ljava/util/Map;

    .line 80
    iput-object p8, p0, Lcom/facebook/internal/l;->h:Lcom/facebook/internal/g;

    .line 81
    iput p4, p0, Lcom/facebook/internal/l;->d:I

    .line 82
    iput-boolean p7, p0, Lcom/facebook/internal/l;->g:Z

    .line 83
    iput-object p5, p0, Lcom/facebook/internal/l;->e:Ljava/util/EnumSet;

    .line 84
    iput-object p9, p0, Lcom/facebook/internal/l;->i:Ljava/lang/String;

    .line 85
    iput-object p10, p0, Lcom/facebook/internal/l;->j:Ljava/lang/String;

    .line 86
    iput-boolean p11, p0, Lcom/facebook/internal/l;->k:Z

    .line 87
    iput-boolean p12, p0, Lcom/facebook/internal/l;->l:Z

    .line 88
    iput-object p13, p0, Lcom/facebook/internal/l;->n:Lorg/json/JSONArray;

    .line 89
    iput-object p14, p0, Lcom/facebook/internal/l;->m:Ljava/lang/String;

    .line 90
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/facebook/internal/l;->o:Z

    .line 91
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/internal/l;->p:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/internal/l;->q:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/internal/l;->r:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/facebook/internal/l;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/internal/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/facebook/internal/l;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/facebook/internal/l;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/facebook/internal/l;->g:Z

    return v0
.end method

.method public f()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/internal/l;->e:Ljava/util/EnumSet;

    return-object v0
.end method

.method public g()Lcom/facebook/internal/g;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/internal/l;->h:Lcom/facebook/internal/g;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/facebook/internal/l;->k:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/facebook/internal/l;->l:Z

    return v0
.end method

.method public j()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/internal/l;->n:Lorg/json/JSONArray;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/internal/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/internal/l;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/internal/l;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/internal/l;->r:Ljava/lang/String;

    return-object v0
.end method
