.class public Lr9/e$b;
.super Lr9/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr9/e;->s()Laa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lr9/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lr9/e;

    return-void
.end method

.method public constructor <init>(Lr9/e;Laa/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/e$b;->c:Lr9/e;

    invoke-direct {p0, p2}, Lr9/f;-><init>(Laa/x;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lr9/e$b;->c:Lr9/e;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lr9/e;->m:Z

    return-void
.end method
