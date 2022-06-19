.class public Ls7/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/b;->a(Lk7/m;)Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/l;


# direct methods
.method public constructor <init>(Ls7/b;Lk7/l;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls7/b$b;->a:Lk7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ls7/b$b;->a:Lk7/l;

    .line 2
    iget v0, p2, Lk7/l;->c:I

    .line 3
    invoke-virtual {p2, p1, v0}, Lk7/l;->d(Lk7/l;I)V

    return-void
.end method
