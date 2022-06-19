.class public Lcom/callapp/contacts/model/Note;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x36be3bc55e054ce1L


# instance fields
.field private note:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 15
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/Note;->setNoteText(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/Note;->setNoteText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNoteText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/model/Note;->note:Ljava/lang/String;

    return-object v0
.end method

.method public setNoteText(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/model/Note;->note:Ljava/lang/String;

    return-void
.end method
