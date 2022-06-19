.class public Lcom/explorestack/protobuf/SingleFieldBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private isClean:Z

.field private message:Lcom/explorestack/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage;Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage;

    iput-object p1, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    .line 81
    iput-object p2, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    .line 82
    iput-boolean p3, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->isClean:Z

    return-void
.end method

.method private onChanged()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->isClean:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v0}, Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->isClean:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcom/explorestack/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->isClean:Z

    .line 115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getMessage()Lcom/explorestack/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/SingleFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    .line 196
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    .line 197
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->dispose()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->onChanged()V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getBuilder()Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessage;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    iput-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    .line 132
    iget-object v1, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 133
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->markClean()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    return-object v0
.end method

.method public getMessage()Lcom/explorestack/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIType;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public markDirty()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->onChanged()V

    return-void
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/SingleFieldBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/explorestack/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 177
    iput-object p1, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getBuilder()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 181
    :goto_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->onChanged()V

    return-object p0
.end method

.method public setMessage(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/SingleFieldBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/explorestack/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage;

    iput-object p1, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->message:Lcom/explorestack/protobuf/GeneratedMessage;

    .line 161
    iget-object p1, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->dispose()V

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/explorestack/protobuf/SingleFieldBuilder;->builder:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->onChanged()V

    return-object p0
.end method
