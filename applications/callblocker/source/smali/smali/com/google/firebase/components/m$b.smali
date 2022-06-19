.class Lcom/google/firebase/components/m$b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/firebase/components/m$b;->a:Ljava/lang/Class;

    .line 32
    iput-boolean p2, p0, Lcom/google/firebase/components/m$b;->b:Z

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;ZLcom/google/firebase/components/m$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/m$b;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/m$b;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/firebase/components/m$b;->b:Z

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    instance-of v1, p1, Lcom/google/firebase/components/m$b;

    if-eqz v1, :cond_0

    .line 38
    check-cast p1, Lcom/google/firebase/components/m$b;

    .line 39
    iget-object v1, p1, Lcom/google/firebase/components/m$b;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/firebase/components/m$b;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/firebase/components/m$b;->b:Z

    iget-boolean v2, p0, Lcom/google/firebase/components/m$b;->b:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 41
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const v1, 0xf4243

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/firebase/components/m$b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget-boolean v1, p0, Lcom/google/firebase/components/m$b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 50
    return v0
.end method
