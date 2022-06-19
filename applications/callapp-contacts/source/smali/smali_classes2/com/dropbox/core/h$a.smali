.class public final Lcom/dropbox/core/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/http/a;

.field public d:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/dropbox/core/h$a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/dropbox/core/h$a;->b:Ljava/lang/String;

    .line 249
    sget-object p1, Lcom/dropbox/core/http/d;->c:Lcom/dropbox/core/http/d;

    iput-object p1, p0, Lcom/dropbox/core/h$a;->c:Lcom/dropbox/core/http/a;

    const/4 p1, 0x0

    .line 250
    iput p1, p0, Lcom/dropbox/core/h$a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/dropbox/core/h$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/dropbox/core/h$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/a;I)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/dropbox/core/h$a;->a:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/dropbox/core/h$a;->b:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/dropbox/core/h$a;->c:Lcom/dropbox/core/http/a;

    .line 242
    iput p4, p0, Lcom/dropbox/core/h$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/a;ILcom/dropbox/core/h$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/a;I)V

    return-void
.end method
