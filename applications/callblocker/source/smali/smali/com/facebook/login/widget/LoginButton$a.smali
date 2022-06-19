.class Lcom/facebook/login/widget/LoginButton$a;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/login/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/login/i;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/facebook/login/b;->c:Lcom/facebook/login/b;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Lcom/facebook/login/b;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Ljava/util/List;

    .line 136
    sget-object v0, Lcom/facebook/login/i;->a:Lcom/facebook/login/i;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->c:Lcom/facebook/login/i;

    .line 137
    const-string/jumbo v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/widget/LoginButton$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/login/b;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Lcom/facebook/login/b;

    return-object v0
.end method

.method public a(Lcom/facebook/login/b;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Lcom/facebook/login/b;

    .line 141
    return-void
.end method

.method public a(Lcom/facebook/login/i;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$a;->c:Lcom/facebook/login/i;

    .line 161
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$a;->d:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Ljava/util/List;

    .line 149
    return-void
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/facebook/login/i;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->c:Lcom/facebook/login/i;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->d:Ljava/lang/String;

    return-object v0
.end method
