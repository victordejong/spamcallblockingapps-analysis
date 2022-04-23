package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.model.PersonPayload;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/PersonManager.class */
public class PersonManager {
    private static boolean equal(Object obj, Object obj2) {
        return (obj == null && obj2 == null) || !(obj == null || obj2 == null || !obj.equals(obj2));
    }

    public static PersonPayload getDiffPayload(Person person, Person person2) {
        PersonPayload personPayload = null;
        if (person2 == null) {
            return null;
        }
        PersonPayload personPayload2 = new PersonPayload();
        boolean z = false;
        if (person == null || !equal(person.getId(), person2.getId())) {
            personPayload2.setId(person2.getId());
            z = true;
        }
        if (person == null || !equal(person.getEmail(), person2.getEmail())) {
            personPayload2.setEmail(person2.getEmail());
            z = true;
        }
        if (person == null || !equal(person.getName(), person2.getName())) {
            personPayload2.setName(person2.getName());
            z = true;
        }
        if (person == null || !equal(person.getFacebookId(), person2.getFacebookId())) {
            personPayload2.setFacebookId(person2.getFacebookId());
            z = true;
        }
        if (person == null || !equal(person.getPhoneNumber(), person2.getPhoneNumber())) {
            personPayload2.setPhoneNumber(person2.getPhoneNumber());
            z = true;
        }
        if (person == null || !equal(person.getStreet(), person2.getStreet())) {
            personPayload2.setStreet(person2.getStreet());
            z = true;
        }
        if (person == null || !equal(person.getCity(), person2.getCity())) {
            personPayload2.setCity(person2.getCity());
            z = true;
        }
        if (person == null || !equal(person.getZip(), person2.getZip())) {
            personPayload2.setZip(person2.getZip());
            z = true;
        }
        if (person == null || !equal(person.getCountry(), person2.getCountry())) {
            personPayload2.setCountry(person2.getCountry());
            z = true;
        }
        if (person == null || !equal(person.getBirthday(), person2.getBirthday())) {
            personPayload2.setBirthday(person2.getBirthday());
            z = true;
        }
        if (person == null || !equal(person.getCustomData(), person2.getCustomData())) {
            CustomData customData = person2.getCustomData();
            personPayload2.setCustomData(customData != null ? customData.toJson() : null);
            z = true;
        }
        if (person == null || !equal(person.getMParticleId(), person2.getMParticleId())) {
            personPayload2.setMParticleId(person2.getMParticleId());
            z = true;
        }
        if (z) {
            personPayload = personPayload2;
        }
        return personPayload;
    }
}
