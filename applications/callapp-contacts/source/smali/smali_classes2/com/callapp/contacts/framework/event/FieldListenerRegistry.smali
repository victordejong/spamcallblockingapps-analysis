.class public interface abstract Lcom/callapp/contacts/framework/event/FieldListenerRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
.end method

.method public abstract a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setValue(Lcom/callapp/contacts/model/contact/ContactData;)V
.end method
