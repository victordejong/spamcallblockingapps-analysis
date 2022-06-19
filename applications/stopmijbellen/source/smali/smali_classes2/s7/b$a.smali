.class public Ls7/b$a;
.super Lm7/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/b;->a(Lk7/m;)Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/g<",
        "Lk7/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lk7/m;


# direct methods
.method public constructor <init>(Ls7/b;Lk7/m;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls7/b$a;->j:Lk7/m;

    invoke-direct {p0}, Lm7/g;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls7/b$a;->j:Lk7/m;

    invoke-interface {v0}, Lk7/m;->close()V

    return-void
.end method
