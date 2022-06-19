.class public Lcom/callapp/contacts/framework/event/NopListenerRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/event/FieldListenerRegistry;


# static fields
.field private static final a:Lcom/callapp/contacts/framework/event/NopListenerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/callapp/contacts/framework/event/NopListenerRegistry;

    invoke-direct {v0}, Lcom/callapp/contacts/framework/event/NopListenerRegistry;-><init>()V

    sput-object v0, Lcom/callapp/contacts/framework/event/NopListenerRegistry;->a:Lcom/callapp/contacts/framework/event/NopListenerRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/framework/event/NopListenerRegistry;
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/framework/event/NopListenerRegistry;->a:Lcom/callapp/contacts/framework/event/NopListenerRegistry;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setValue(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    return-void
.end method
